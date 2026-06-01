import { ModuleForm } from '@/components/admin/ModuleForm';

export default function NewModulePage() {
  return (
    <main className="wrap" style={{ paddingTop: 'calc(var(--nav-h) + 40px)', paddingBottom: 80 }}>
      <h1 style={{ fontSize: 26, marginBottom: 32 }}>Nouveau module</h1>
      <ModuleForm />
    </main>
  );
}
