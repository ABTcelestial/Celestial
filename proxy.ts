import { clerkMiddleware, createRouteMatcher } from '@clerk/nextjs/server';
import { createServerClient } from '@supabase/ssr';
import { NextResponse, type NextRequest } from 'next/server';

const isPlatformRoute = createRouteMatcher(['/platforme-BusinessProcess/:path*']);
const isPlatformLogin = createRouteMatcher(['/platforme-BusinessProcess/login']);
const isAdminLogin = createRouteMatcher(['/celestial-admin-rtabt/login']);

export const proxy = clerkMiddleware(async (auth, request: NextRequest) => {
  const { pathname } = request.nextUrl;

  // Platform routes → Clerk auth.protect()
  if (isPlatformRoute(request) && !isPlatformLogin(request)) {
    await auth.protect();
  }

  // Admin routes → Supabase session check
  if (pathname.startsWith('/celestial-admin-rtabt')) {
    let supabaseResponse = NextResponse.next({ request });

    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      {
        cookies: {
          getAll() { return request.cookies.getAll(); },
          setAll(toSet) {
            toSet.forEach(({ name, value }) => request.cookies.set(name, value));
            supabaseResponse = NextResponse.next({ request });
            toSet.forEach(({ name, value, options }) =>
              supabaseResponse.cookies.set(name, value, options)
            );
          },
        },
      }
    );

    const { data: { user } } = await supabase.auth.getUser();

    if (!isAdminLogin(request) && !user) {
      return NextResponse.redirect(new URL('/celestial-admin-rtabt/login', request.url));
    }
    if (isAdminLogin(request) && user) {
      return NextResponse.redirect(new URL('/celestial-admin-rtabt', request.url));
    }

    return supabaseResponse;
  }
});

export const config = {
  matcher: ['/celestial-admin-rtabt/:path*', '/platforme-BusinessProcess/:path*'],
};
