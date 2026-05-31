import { ChangelogForm } from '@/components/admin/ChangelogForm';

export default function NewChangelogPage() {
  return (
    <main style={{ padding: '40px 28px', maxWidth: 760, margin: '0 auto' }}>
      <div style={{ marginBottom: 32 }}>
        <div className="eyebrow">Changelogs</div>
        <h1 style={{ fontSize: 'clamp(24px,2.6vw,34px)', marginTop: 10 }}>Nouvelle entrée</h1>
      </div>
      <ChangelogForm mode="create" />
    </main>
  );
}
