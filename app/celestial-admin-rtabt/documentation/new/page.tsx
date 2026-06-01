import { DocPageForm } from '@/components/admin/DocPageForm';

export default function NewDocPagePage() {
  return (
    <main style={{ padding: '40px 28px', maxWidth: 900, margin: '0 auto' }}>
      <div style={{ marginBottom: 32 }}>
        <div className="eyebrow">Documentation</div>
        <h1 style={{ fontSize: 'clamp(24px,2.6vw,34px)', marginTop: 10 }}>Nouvelle page</h1>
      </div>
      <DocPageForm mode="create" />
    </main>
  );
}
