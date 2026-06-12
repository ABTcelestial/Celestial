import { createServerClient } from '@supabase/ssr';
import { NextResponse, type NextRequest } from 'next/server';

export async function proxy(request: NextRequest) {
  const { pathname } = request.nextUrl;
  let response = NextResponse.next({ request });

  const supabase = createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    {
      cookies: {
        getAll() { return request.cookies.getAll(); },
        setAll(toSet) {
          toSet.forEach(({ name, value }) => request.cookies.set(name, value));
          response = NextResponse.next({ request });
          toSet.forEach(({ name, value, options }) =>
            response.cookies.set(name, value, options)
          );
        },
      },
    }
  );

  const { data: { user } } = await supabase.auth.getUser();

  if (pathname.startsWith('/celestial-admin-rtabt')) {
    // Le CMS est réservé aux admins (table admin_users) : un compte client
    // (plateforme ou application licenciée) connecté n'y a pas accès.
    let isAdmin = false;
    if (user) {
      const { data } = await supabase
        .from('admin_users')
        .select('user_id')
        .eq('user_id', user.id)
        .maybeSingle();
      isAdmin = !!data;
    }

    const isLogin = pathname === '/celestial-admin-rtabt/login';
    if (!isLogin && !isAdmin) {
      return NextResponse.redirect(new URL('/celestial-admin-rtabt/login', request.url));
    }
    if (isLogin && isAdmin) {
      return NextResponse.redirect(new URL('/celestial-admin-rtabt', request.url));
    }
    return response;
  }

  if (pathname.startsWith('/platforme-BusinessProcess')) {
    const isLogin = pathname === '/platforme-BusinessProcess/login';
    if (!isLogin && !user) {
      return NextResponse.redirect(new URL('/platforme-BusinessProcess/login', request.url));
    }
    if (isLogin && user) {
      return NextResponse.redirect(new URL('/platforme-BusinessProcess/dashboard', request.url));
    }
    return response;
  }

  return response;
}

export const config = {
  matcher: ['/celestial-admin-rtabt/:path*', '/platforme-BusinessProcess/:path*'],
};
