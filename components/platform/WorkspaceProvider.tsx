'use client';

import { createContext, useContext } from 'react';
import type { ErpColumnDef } from '@/lib/supabase/types';

export interface WorkspaceTable {
  id: string;
  name: string;
  label: string;
  columns: ErpColumnDef[];
  description: string | null;
  can_export: boolean;
}

interface WorkspaceContextValue {
  workspace: { id: string; name: string; slug: string; active: boolean };
  role: 'owner' | 'viewer';
  tables: WorkspaceTable[];
}

const WorkspaceContext = createContext<WorkspaceContextValue | null>(null);

export function WorkspaceProvider({
  children,
  workspace,
  role,
  tables,
}: {
  children: React.ReactNode;
  workspace: WorkspaceContextValue['workspace'];
  role: 'owner' | 'viewer';
  tables: WorkspaceTable[];
}) {
  return (
    <WorkspaceContext.Provider value={{ workspace, role, tables }}>
      {children}
    </WorkspaceContext.Provider>
  );
}

export function useWorkspace() {
  const ctx = useContext(WorkspaceContext);
  if (!ctx) throw new Error('useWorkspace must be used inside WorkspaceProvider');
  return ctx;
}
