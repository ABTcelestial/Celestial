export type DevisStatut = 'nouveau' | 'lu' | 'traite';

export interface ErpColumnDef {
  key: string;
  label: string;
  type: 'text' | 'number' | 'date' | 'boolean';
}
export type ChangelogProduit = string;
export type DocProduit = string;

export interface ChangelogChangement {
  tag: string;
  texte: string;
  cls: string;
}

export type Database = {
  public: {
    Tables: {
      devis: {
        Row: {
          id: string; nom: string; entreprise: string; email: string;
          telephone: string | null; logiciel: string; message: string;
          statut: DevisStatut; created_at: string;
        };
        Insert: {
          id?: string; nom: string; entreprise: string; email: string;
          telephone?: string | null; logiciel: string; message: string;
          statut?: DevisStatut; created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['devis']['Row']>;
        Relationships: [];
      };
      changelogs: {
        Row: {
          id: string; produit: ChangelogProduit; version: string | null;
          titre: string; date: string; type_badge: string;
          type_badge_cls: string; changements: ChangelogChangement[]; created_at: string;
        };
        Insert: {
          id?: string; produit: ChangelogProduit; version?: string | null;
          titre: string; date: string; type_badge: string;
          type_badge_cls: string; changements: ChangelogChangement[]; created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['changelogs']['Row']>;
        Relationships: [];
      };
      produits: {
        Row: {
          id: string; nom: string; icone: string; description: string;
          type: 'logiciel' | 'materiel' | 'service';
          prix: number; badge: string | null; lien: string | null;
          featured: boolean; ordre: number; actif: boolean;
          application_id: string | null; created_at: string;
        };
        Insert: {
          id?: string; nom: string; icone?: string; description: string;
          type?: 'logiciel' | 'materiel' | 'service';
          prix?: number; badge?: string | null; lien?: string | null;
          featured?: boolean; ordre?: number; actif?: boolean;
          application_id?: string | null; created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['produits']['Row']>;
        Relationships: [];
      };
      applications: {
        Row: {
          id: string; nom: string; slug: string; description: string | null;
          apk_path: string | null; apk_version: string | null; apk_size: number | null;
          actif: boolean; has_licenses: boolean; created_at: string;
        };
        Insert: {
          id?: string; nom: string; slug: string; description?: string | null;
          apk_path?: string | null; apk_version?: string | null; apk_size?: number | null;
          actif?: boolean; has_licenses?: boolean; created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['applications']['Row']>;
        Relationships: [];
      };
      licenses: {
        Row: {
          id: string; application_id: string; user_id: string; email: string;
          client_name: string | null; note: string | null;
          status: 'active' | 'revoked'; created_at: string;
        };
        Insert: {
          id?: string; application_id: string; user_id: string; email: string;
          client_name?: string | null; note?: string | null;
          status?: 'active' | 'revoked'; created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['licenses']['Row']>;
        Relationships: [];
      };
      admin_users: {
        Row: { user_id: string; created_at: string };
        Insert: { user_id: string; created_at?: string };
        Update: Partial<Database['public']['Tables']['admin_users']['Row']>;
        Relationships: [];
      };
      modules: {
        Row: {
          id: string; nom: string; description: string; prix: number;
          icone: string; actif: boolean; ordre: number; created_at: string;
        };
        Insert: {
          id?: string; nom: string; description?: string; prix?: number;
          icone?: string; actif?: boolean; ordre?: number; created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['modules']['Row']>;
        Relationships: [];
      };
      produit_modules: {
        Row: { produit_id: string; module_id: string };
        Insert: { produit_id: string; module_id: string };
        Update: { produit_id?: string; module_id?: string };
        Relationships: [];
      };
      contact_info: {
        Row: {
          id: number; adresse: string; telephone: string; email: string;
          linkedin_url: string; twitter_url: string; facebook_url: string;
          updated_at: string;
        };
        Insert: {
          id?: number; adresse?: string; telephone?: string; email?: string;
          linkedin_url?: string; twitter_url?: string; facebook_url?: string;
          updated_at?: string;
        };
        Update: Partial<Database['public']['Tables']['contact_info']['Row']>;
        Relationships: [];
      };
      doc_pages: {
        Row: {
          id: string; produit: DocProduit; section: string;
          section_ordre: number; titre: string; contenu: string;
          ordre: number; created_at: string;
        };
        Insert: {
          id?: string; produit: DocProduit; section: string;
          section_ordre?: number; titre: string; contenu?: string;
          ordre?: number; created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['doc_pages']['Row']>;
        Relationships: [];
      };
      suite_config: {
        Row: { id: number; label: string; description: string; remise_pct: number; actif: boolean; updated_at: string; };
        Insert: { id?: number; label?: string; description?: string; remise_pct?: number; actif?: boolean; updated_at?: string; };
        Update: { id?: number; label?: string; description?: string; remise_pct?: number; actif?: boolean; updated_at?: string; };
        Relationships: [];
      };
      comparatif_modules: {
        Row: { id: string; feature: string; business: boolean; compta: boolean; pay: boolean; ordre: number; };
        Insert: { id?: string; feature: string; business?: boolean; compta?: boolean; pay?: boolean; ordre?: number; };
        Update: { id?: string; feature?: string; business?: boolean; compta?: boolean; pay?: boolean; ordre?: number; };
        Relationships: [];
      };
      bundles: {
        Row: {
          id: string; nom: string; description: string; produits: string[];
          prix: number | null; remise_pct: number; badge: string | null;
          actif: boolean; ordre: number; created_at: string;
        };
        Insert: {
          id?: string; nom: string; description?: string; produits?: string[];
          prix?: number | null; remise_pct?: number; badge?: string | null;
          actif?: boolean; ordre?: number; created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['bundles']['Row']>;
        Relationships: [];
      };
      platform_workspaces: {
        Row: { id: string; name: string; slug: string; licence_key: string; active: boolean; created_at: string; };
        Insert: { id?: string; name: string; slug: string; licence_key?: string; active?: boolean; created_at?: string; };
        Update: Partial<Database['public']['Tables']['platform_workspaces']['Row']>;
        Relationships: [];
      };
      platform_members: {
        Row: { id: string; workspace_id: string; user_id: string; email: string; role: 'owner' | 'viewer'; created_at: string; };
        Insert: { id?: string; workspace_id: string; user_id: string; email: string; role: 'owner' | 'viewer'; created_at?: string; };
        Update: Partial<Database['public']['Tables']['platform_members']['Row']>;
        Relationships: [];
      };
      erp_table_definitions: {
        Row: { id: string; name: string; label: string; columns: ErpColumnDef[]; description: string | null; created_at: string; };
        Insert: { id?: string; name: string; label: string; columns?: ErpColumnDef[]; description?: string | null; created_at?: string; };
        Update: Partial<Database['public']['Tables']['erp_table_definitions']['Row']>;
        Relationships: [];
      };
      workspace_table_access: {
        Row: { workspace_id: string; table_id: string; can_export: boolean; };
        Insert: { workspace_id: string; table_id: string; can_export?: boolean; };
        Update: { workspace_id?: string; table_id?: string; can_export?: boolean; };
        Relationships: [];
      };
      erp_data: {
        Row: { id: string; workspace_id: string; table_name: string; record_id: string; data: Record<string, unknown>; synced_at: string; };
        Insert: { id?: string; workspace_id: string; table_name: string; record_id: string; data: Record<string, unknown>; synced_at?: string; };
        Update: Partial<Database['public']['Tables']['erp_data']['Row']>;
        Relationships: [];
      };
      platform_notifications: {
        Row: { id: string; workspace_id: string; title: string; message: string; read: boolean; created_at: string; };
        Insert: { id?: string; workspace_id: string; title: string; message: string; read?: boolean; created_at?: string; };
        Update: Partial<Database['public']['Tables']['platform_notifications']['Row']>;
        Relationships: [];
      };
      platform_messages: {
        Row: { id: string; workspace_id: string; sender_type: 'client' | 'admin'; user_id: string | null; content: string; created_at: string; };
        Insert: { id?: string; workspace_id: string; sender_type: 'client' | 'admin'; user_id?: string | null; content: string; created_at?: string; };
        Update: Partial<Database['public']['Tables']['platform_messages']['Row']>;
        Relationships: [];
      };
      erp_sync_logs: {
        Row: { id: string; workspace_id: string; table_name: string; records_synced: number | null; status: 'success' | 'error'; error_message: string | null; synced_at: string; };
        Insert: { id?: string; workspace_id: string; table_name: string; records_synced?: number | null; status: 'success' | 'error'; error_message?: string | null; synced_at?: string; };
        Update: Partial<Database['public']['Tables']['erp_sync_logs']['Row']>;
        Relationships: [];
      };
    };
    Views: Record<string, never>;
    Functions: Record<string, never>;
    Enums: Record<string, never>;
    CompositeTypes: Record<string, never>;
  };
};
