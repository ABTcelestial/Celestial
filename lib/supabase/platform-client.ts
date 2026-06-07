'use client';

import { useAuth } from '@clerk/nextjs';
import { createClient } from '@supabase/supabase-js';
import { useMemo } from 'react';
import type { Database } from './types';

export function usePlatformClient() {
  const { getToken } = useAuth();
  return useMemo(
    () =>
      createClient<Database>(
        process.env.NEXT_PUBLIC_SUPABASE_URL!,
        process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
        {
          global: {
            fetch: async (url, options = {}) => {
              const token = await getToken({ template: 'supabase' });
              return fetch(url, {
                ...options,
                headers: {
                  ...(options.headers as Record<string, string>),
                  Authorization: `Bearer ${token}`,
                },
              });
            },
          },
        }
      ),
    [getToken]
  );
}
