---
type: community
cohesion: 0.13
members: 33
---

# CMS Data & Admin Pages

**Cohesion:** 0.13 - loosely connected
**Members:** 33 nodes

## Members
- [[Admin CRUD Pattern]] - code - app/admin
- [[Admin Changelogs Page]] - code - app/admin/changelogs/page.tsx
- [[Admin Dashboard Page]] - code - app/admin/page.tsx
- [[Admin Devis Page]] - code - app/admin/devis/page.tsx
- [[Admin Documentation Page]] - code - app/admin/documentation/page.tsx
- [[Admin Login Page]] - code - app/admin/login/page.tsx
- [[Admin Produits Page]] - code - app/admin/produits/page.tsx
- [[AdminChangelogList Component_1]] - code - components/admin/AdminChangelogList.tsx
- [[AdminChangelogList Component]] - code - components/admin/AdminChangelogList.tsx
- [[AdminNav Component_1]] - code - components/admin/AdminNav.tsx
- [[ChangelogForm Component]] - code - components/admin/ChangelogForm.tsx
- [[ChangelogTimeline Component]] - code - components/changelogs/ChangelogTimeline.tsx
- [[Changelogs Page]] - code - app/(site)/changelogs/page.tsx
- [[ComparatifEditor Component]] - code - components/admin/ComparatifEditor.tsx
- [[DB Table changelogs]] - code
- [[DB Table devis]] - code
- [[DB Table doc_pages]] - code
- [[DevisTable Component]] - code - components/admin/DevisTable.tsx
- [[DocPageForm Component]] - code - components/admin/DocPageForm.tsx
- [[DocPagesList Component]] - code - components/admin/DocPagesList.tsx
- [[DocViewer Component]] - code - components/docs/DocViewer.tsx
- [[Documentation Page]] - code - app/(site)/documentation/page.tsx
- [[Edit Changelog Page]] - code - app/admin/changelogs/[id]/edit/page.tsx
- [[Edit Doc Page]] - code - app/admin/documentation/[id]/edit/page.tsx
- [[LogoMark Component_1]] - code - components/layout/LogoMark.tsx
- [[New Changelog Page]] - code - app/admin/changelogs/new/page.tsx
- [[New Doc Page]] - code - app/admin/documentation/new/page.tsx
- [[ProduitsList Component]] - code - components/admin/ProduitsList.tsx
- [[Server Action submitDevis]] - code - app/actions/devis.ts
- [[Supabase Auth (signInsignOut)]] - code - app/admin/login/page.tsx
- [[Supabase Browser Client]] - code - lib/supabase/client.ts
- [[Supabase Server Client Factory]] - code - lib/supabase/server.ts
- [[Supabase Types]] - code - lib/supabase/types.ts

## Live Query (requires Dataview plugin)

```dataview
TABLE source_file, type FROM #community/CMS_Data__Admin_Pages
SORT file.name ASC
```

## Connections to other communities
- 9 edges to [[_COMMUNITY_Product Catalogue Components]]
- 6 edges to [[_COMMUNITY_App Layout Shell]]
- 2 edges to [[_COMMUNITY_Public UI Components]]

## Top bridge nodes
- [[AdminNav Component_1]] - degree 10, connects to 3 communities
- [[Supabase Server Client Factory]] - degree 17, connects to 2 communities
- [[Server Action submitDevis]] - degree 4, connects to 2 communities
- [[DB Table changelogs]] - degree 8, connects to 1 community
- [[DB Table doc_pages]] - degree 6, connects to 1 community