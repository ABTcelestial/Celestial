import { createServerClient } from '@supabase/ssr';
import { NextResponse, type NextRequest } from 'next/server';

export async function proxy(request: NextRequest) {
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
          toSet.forEach(({ name, value, options }) => supabaseResponse.cookies.set(name, value, options));
        },
      },
    }
  );

  const { data: { user } } = await supabase.auth.getUser();
  const { pathname } = request.nextUrl;

  // Protect all /admin routes except /admin/login
  if (pathname.startsWith('/celestial-admin-rtabt') && pathname !== '/celestial-admin-rtabt/login') {
    if (!user) {
      return NextResponse.redirect(new URL('/celestial-admin-rtabt/login', request.url));
    }
  }

  // Redirect authenticated users away from login
  if (pathname === '/celestial-admin-rtabt/login' && user) {
    return NextResponse.redirect(new URL('/celestial-admin-rtabt', request.url));
  }

  return supabaseResponse;
}

export const config = {
  matcher: ['/celestial-admin-rtabt/:path*'],
};
