---
type: community
cohesion: 0.06
members: 56
---

# Admin Form Actions

**Cohesion:** 0.06 - loosely connected
**Members:** 56 nodes

## Members
- [[AdminChangelogList.tsx]] - code - components/admin/AdminChangelogList.tsx
- [[Architecture Decision Admin CMS Server+Client Pattern]] - rationale - CLAUDE.md
- [[Architecture Decision Dual Supabase Client (Server vs Browser)]] - rationale - CLAUDE.md
- [[ChangelogChangement Interface]] - code - lib/supabase/types.ts
- [[ChangelogForm.tsx]] - code - components/admin/ChangelogForm.tsx
- [[ChangelogProduit Enum (businesspaycomptacompany)]] - code - lib/supabase/types.ts
- [[ChangelogTimeline.tsx]] - code - components/changelogs/ChangelogTimeline.tsx
- [[ComparatifEditor.tsx]] - code - components/admin/ComparatifEditor.tsx
- [[DB Table changelogs (Release Notes)]] - code - supabase/schema.sql
- [[DB Table comparatif_modules (Feature Comparison Grid)]] - code - supabase/migration_offres_config.sql
- [[DB Table contact_info (Single-Row Contact Details)]] - code - supabase/schema.sql
- [[DB Table devis (Quote Requests)]] - code - supabase/schema.sql
- [[DB Table doc_pages (Documentation Pages)]] - code - supabase/schema.sql
- [[DB Table produits (ERP Product Catalogue)]] - code - supabase/schema.sql
- [[DB Table suite_config (Bundle Config Single-Row)]] - code - supabase/migration_offres_config.sql
- [[Database Type Definition]] - code - lib/supabase/types.ts
- [[DevisStatut Enum (nouveaulutraite)]] - code - lib/supabase/types.ts
- [[DevisTable.tsx]] - code - components/admin/DevisTable.tsx
- [[DocPageForm.tsx]] - code - components/admin/DocPageForm.tsx
- [[DocPagesList.tsx]] - code - components/admin/DocPagesList.tsx
- [[DocProduit Enum (businesspaycompta)]] - code - lib/supabase/types.ts
- [[Env Var NEXT_PUBLIC_SUPABASE_ANON_KEY]] - document - CLAUDE.md
- [[Env Var NEXT_PUBLIC_SUPABASE_URL]] - document - CLAUDE.md
- [[ParametresForm.tsx]] - code - components/admin/ParametresForm.tsx
- [[ProduitForm.tsx]] - code - components/admin/ProduitForm.tsx
- [[ProduitsList.tsx]] - code - components/admin/ProduitsList.tsx
- [[Row Level Security Policies]] - code - supabase/schema.sql
- [[Seed Data Business Process Product]] - code - supabase/schema.sql
- [[Seed Data Compta Process Product (Featured)]] - code - supabase/schema.sql
- [[Seed Data Pay Process Product]] - code - supabase/schema.sql
- [[SuiteConfigForm.tsx]] - code - components/admin/SuiteConfigForm.tsx
- [[Supabase Browser Client (createClient)]] - code - lib/supabase/client.ts
- [[Supabase Server Client (createClient)]] - code - lib/supabase/server.ts
- [[addChangement()]] - code - components/admin/ChangelogForm.tsx
- [[addModule()]] - code - components/admin/ProduitForm.tsx
- [[addRow()]] - code - components/admin/ComparatifEditor.tsx
- [[client.ts]] - code - lib/supabase/client.ts
- [[createClient()]] - code - lib/supabase/client.ts
- [[deleteRow()]] - code - components/admin/ComparatifEditor.tsx
- [[handleDelete()]] - code - components/admin/AdminChangelogList.tsx
- [[handleDelete()_1]] - code - components/admin/DevisTable.tsx
- [[handleDelete()_2]] - code - components/admin/DocPagesList.tsx
- [[handleDelete()_3]] - code - components/admin/ProduitsList.tsx
- [[handleSubmit()_1]] - code - components/admin/ChangelogForm.tsx
- [[handleSubmit()_2]] - code - components/admin/DocPageForm.tsx
- [[handleSubmit()_3]] - code - components/admin/ParametresForm.tsx
- [[handleSubmit()_4]] - code - components/admin/ProduitForm.tsx
- [[handleSubmit()_5]] - code - components/admin/SuiteConfigForm.tsx
- [[moveRow()]] - code - components/admin/ComparatifEditor.tsx
- [[removeChangement()]] - code - components/admin/ChangelogForm.tsx
- [[removeModule()]] - code - components/admin/ProduitForm.tsx
- [[toggleActif()]] - code - components/admin/ProduitsList.tsx
- [[updateChangement()]] - code - components/admin/ChangelogForm.tsx
- [[updateModule()]] - code - components/admin/ProduitForm.tsx
- [[updateRow()]] - code - components/admin/ComparatifEditor.tsx
- [[updateStatut()]] - code - components/admin/DevisTable.tsx

## Live Query (requires Dataview plugin)

```dataview
TABLE source_file, type FROM #community/Admin_Form_Actions
SORT file.name ASC
```

## Connections to other communities
- 2 edges to [[_COMMUNITY_Admin Auth & Navigation]]
- 1 edge to [[_COMMUNITY_Doc Viewer Logic]]
- 1 edge to [[_COMMUNITY_Devis & CRM Flow]]

## Top bridge nodes
- [[Database Type Definition]] - degree 27, connects to 2 communities
- [[createClient()]] - degree 13, connects to 1 community