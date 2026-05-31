'use client';
import { useState } from 'react';
import { createClient } from '@/lib/supabase/client';
import { useRouter } from 'next/navigation';
import type { Database } from '@/lib/supabase/types';

type ContactInfo = Database['public']['Tables']['contact_info']['Row'];

export function ParametresForm({ initialData }: { initialData?: ContactInfo }) {
  const supabase = createClient();
  const router = useRouter();

  const [adresse, setAdresse] = useState(initialData?.adresse ?? '');
  const [telephone, setTelephone] = useState(initialData?.telephone ?? '');
  const [email, setEmail] = useState(initialData?.email ?? '');
  const [linkedin, setLinkedin] = useState(initialData?.linkedin_url ?? '');
  const [twitter, setTwitter] = useState(initialData?.twitter_url ?? '');
  const [facebook, setFacebook] = useState(initialData?.facebook_url ?? '');
  const [saving, setSaving] = useState(false);
  const [saved, setSaved] = useState(false);
  const [error, setError] = useState('');

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setSaving(true); setError(''); setSaved(false);

    const payload = { id: 1, adresse, telephone, email, linkedin_url: linkedin, twitter_url: twitter, facebook_url: facebook, updated_at: new Date().toISOString() };
    const { error: err } = await supabase.from('contact_info').upsert(payload, { onConflict: 'id' });

    setSaving(false);
    if (err) { setError(err.message); return; }
    setSaved(true);
    router.refresh();
    setTimeout(() => setSaved(false), 3000);
  }

  const fields = [
    { label: 'Adresse complète', value: adresse, set: setAdresse, placeholder: 'Cité des Affaires, Bab Ezzouar, Alger 16000, Algérie', type: 'text' },
    { label: 'Téléphone', value: telephone, set: setTelephone, placeholder: '+213 21 00 00 00', type: 'tel' },
    { label: 'Email de contact', value: email, set: setEmail, placeholder: 'contact@celestial.dz', type: 'email' },
    { label: 'URL LinkedIn', value: linkedin, set: setLinkedin, placeholder: 'https://linkedin.com/company/...', type: 'url' },
    { label: 'URL X / Twitter', value: twitter, set: setTwitter, placeholder: 'https://x.com/...', type: 'url' },
    { label: 'URL Facebook', value: facebook, set: setFacebook, placeholder: 'https://facebook.com/...', type: 'url' },
  ];

  return (
    <form onSubmit={handleSubmit}>
      <div className="card" style={{ padding: 32, display: 'flex', flexDirection: 'column', gap: 20 }}>
        <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: 18 }}>
          {fields.map(f => (
            <div key={f.label} className="field" style={f.label === 'Adresse complète' ? { gridColumn: '1 / -1' } : {}}>
              <label>{f.label}</label>
              <input
                className="cel-input"
                type={f.type}
                placeholder={f.placeholder}
                value={f.value}
                onChange={e => f.set(e.target.value)}
              />
            </div>
          ))}
        </div>

        {error && (
          <div style={{ background: 'rgba(229,88,94,0.1)', border: '1px solid rgba(229,88,94,0.3)', borderRadius: 'var(--r-sm)', padding: '12px 16px', color: 'var(--danger)', fontSize: 14 }}>{error}</div>
        )}

        {saved && (
          <div style={{ background: 'rgba(70,201,154,0.1)', border: '1px solid rgba(70,201,154,0.3)', borderRadius: 'var(--r-sm)', padding: '12px 16px', color: 'var(--cel-success)', fontSize: 14 }}>
            ✓ Modifications enregistrées avec succès.
          </div>
        )}

        <button type="submit" className="btn btn-gold btn-lg" disabled={saving} style={{ opacity: saving ? 0.7 : 1, alignSelf: 'flex-start' }}>
          {saving ? 'Enregistrement…' : 'Enregistrer les paramètres'}
        </button>
      </div>
    </form>
  );
}
