'use client';

import { createClient } from '@/lib/supabase/client';

export function usePlatformClient() {
  return createClient();
}
