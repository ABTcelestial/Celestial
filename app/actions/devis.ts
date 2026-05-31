'use server';
import { createClient } from '@/lib/supabase/server';

export type DevisFormData = {
  nom: string;
  entreprise: string;
  email: string;
  telephone?: string;
  logiciel: string;
  message: string;
};

export type DevisResult = { success: true } | { success: false; error: string };

export async function submitDevis(data: DevisFormData): Promise<DevisResult> {
  const supabase = await createClient();
  const { error } = await supabase.from('devis').insert({
    nom: data.nom,
    entreprise: data.entreprise,
    email: data.email,
    telephone: data.telephone || null,
    logiciel: data.logiciel,
    message: data.message,
  });
  if (error) return { success: false, error: error.message };
  return { success: true };
}
