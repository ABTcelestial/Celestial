export type DevisStatut = 'nouveau' | 'lu' | 'traite';
export type ChangelogProduit = 'business' | 'pay' | 'compta' | 'company';
export type DocProduit = 'business' | 'pay' | 'compta';

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
          modules: string[]; prix: number; featured: boolean;
          ordre: number; actif: boolean; created_at: string;
        };
        Insert: {
          id?: string; nom: string; icone?: string; description: string;
          modules?: string[]; prix?: number; featured?: boolean;
          ordre?: number; actif?: boolean; created_at?: string;
        };
        Update: Partial<Database['public']['Tables']['produits']['Row']>;
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
    };
    Views: Record<string, never>;
    Functions: Record<string, never>;
    Enums: Record<string, never>;
    CompositeTypes: Record<string, never>;
  };
};
