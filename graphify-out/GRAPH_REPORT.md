# Graph Report - .  (2026-06-01)

## Corpus Check
- Corpus is ~22,207 words - fits in a single context window. You may not need a graph.

## Summary
- 254 nodes · 336 edges · 34 communities (28 shown, 6 thin omitted)
- Extraction: 83% EXTRACTED · 17% INFERRED · 0% AMBIGUOUS · INFERRED: 57 edges (avg confidence: 0.86)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- [[_COMMUNITY_Admin Form Actions|Admin Form Actions]]
- [[_COMMUNITY_CMS Data & Admin Pages|CMS Data & Admin Pages]]
- [[_COMMUNITY_App Layout Shell|App Layout Shell]]
- [[_COMMUNITY_Devis & CRM Flow|Devis & CRM Flow]]
- [[_COMMUNITY_Product Catalogue Components|Product Catalogue Components]]
- [[_COMMUNITY_Admin Auth & Navigation|Admin Auth & Navigation]]
- [[_COMMUNITY_Public UI Components|Public UI Components]]
- [[_COMMUNITY_Home Page Sections|Home Page Sections]]
- [[_COMMUNITY_Scroll Animation System|Scroll Animation System]]
- [[_COMMUNITY_Architecture & Brand Concepts|Architecture & Brand Concepts]]
- [[_COMMUNITY_Root Layout|Root Layout]]
- [[_COMMUNITY_Build Config|Build Config]]
- [[_COMMUNITY_Memory & Knowledge System|Memory & Knowledge System]]
- [[_COMMUNITY_Next.js Declarations|Next.js Declarations]]
- [[_COMMUNITY_File SVG|File SVG]]
- [[_COMMUNITY_Globe SVG|Globe SVG]]
- [[_COMMUNITY_Window SVG|Window SVG]]

## God Nodes (most connected - your core abstractions)
1. `Database Type Definition` - 27 edges
2. `Supabase Server Client Factory` - 17 edges
3. `createClient()` - 16 edges
4. `createClient()` - 13 edges
5. `Site Route Group Layout` - 11 edges
6. `AdminNav Component` - 10 edges
7. `Supabase Browser Client` - 8 edges
8. `RevealWrapper()` - 7 edges
9. `Offres & Logiciels Page` - 7 edges
10. `ChangelogForm Component` - 7 edges

## Surprising Connections (you probably didn't know these)
- `Architecture Decision: Admin CMS Server+Client Pattern` --rationale_for--> `Supabase Browser Client (createClient)`  [INFERRED]
  CLAUDE.md → lib/supabase/client.ts
- `Architecture Decision: Admin CMS Server+Client Pattern` --rationale_for--> `Supabase Server Client (createClient)`  [INFERRED]
  CLAUDE.md → lib/supabase/server.ts
- `RevealWrapper CSS Classes (reveal / in)` --conceptually_related_to--> `Architecture Decision: Tailwind v4 via CSS Custom Properties`  [INFERRED]
  components/shared/RevealWrapper.tsx → CLAUDE.md
- `useScrollNav Hook` --conceptually_related_to--> `Architecture Decision: Next.js App Router Route Groups`  [INFERRED]
  hooks/useScrollNav.ts → CLAUDE.md
- `Architecture Decision: Tailwind v4 via CSS Custom Properties` --conceptually_related_to--> `cn() Utility Function`  [INFERRED]
  CLAUDE.md → lib/utils.ts

## Hyperedges (group relationships)
- **Scroll-Triggered Animation Components** — animatedcounter_component, revealwrapper_component, usescrollnav_hook [INFERRED 0.95]
- **Supabase Client Abstraction Layer** — supabase_client_browser, supabase_client_server, supabase_types_database [EXTRACTED 1.00]
- **Celestial Full Database Schema** — db_table_devis, db_table_changelogs, db_table_produits, db_table_contact_info, db_table_doc_pages, db_table_suite_config, db_table_comparatif_modules [EXTRACTED 1.00]
- **Celestial ERP Product Suite** — db_product_business_process, db_product_compta_process, db_product_pay_process, db_table_suite_config, db_table_comparatif_modules [EXTRACTED 1.00]
- **Design System Shared Components** — revealwrapper_component, animatedcounter_component, utils_cn, claudemd_arch_decision_tailwind_v4_css [INFERRED 0.90]
- **Project Memory & Documentation System** — claudemd_concept_graphify_memory, claudemd_concept_obsidian_vault, bienvenue_obsidian_vault_intro [EXTRACTED 1.00]
- **Database Type Enums** — supabase_types_devisstatut, supabase_types_changelogproduit, supabase_types_docproduit, supabase_types_changelogchangement [EXTRACTED 1.00]
- **Next.js Default Public SVG Assets** — svg_file, svg_globe, svg_next, svg_vercel, svg_window [INFERRED 0.85]

## Communities (34 total, 6 thin omitted)

### Community 0 - "Admin Form Actions"
Cohesion: 0.06
Nodes (23): Architecture Decision: Admin CMS Server+Client Pattern, Architecture Decision: Dual Supabase Client (Server vs Browser), Env Var: NEXT_PUBLIC_SUPABASE_ANON_KEY, Env Var: NEXT_PUBLIC_SUPABASE_URL, Seed Data: Business Process Product, Seed Data: Compta Process Product (Featured), Seed Data: Pay Process Product, Row Level Security Policies (+15 more)

### Community 1 - "CMS Data & Admin Pages"
Cohesion: 0.13
Nodes (33): Server Action: submitDevis, Admin Changelogs Page, Admin Dashboard Page, AdminChangelogList Component, AdminNav Component, ChangelogForm Component, ComparatifEditor Component, DevisTable Component (+25 more)

### Community 2 - "App Layout Shell"
Cohesion: 0.09
Nodes (26): Admin Layout, Root Layout (app/layout.tsx), ParametresForm Component, AdminNav Component, AnimatedCounter Component, FinalCtaSection Component, Footer Component, HomeHero Component (+18 more)

### Community 3 - "Devis & CRM Flow"
Cohesion: 0.1
Nodes (4): submitDevis(), handleSubmit(), validate(), createClient()

### Community 4 - "Product Catalogue Components"
Cohesion: 0.16
Nodes (19): ChangelogTimeline, ProduitForm Component, SuiteConfigForm Component, FaqAccordion Component, DB Table: comparatif_modules, DB Table: produits, DB Table: suite_config, DocToc (+11 more)

### Community 5 - "Admin Auth & Navigation"
Cohesion: 0.12
Nodes (3): useScrollNav(), LogoMark(), cn()

### Community 6 - "Public UI Components"
Cohesion: 0.16
Nodes (16): DocSidebar, FaqAccordion, FinalCtaSection, Footer, HomeHero, useScrollNav Hook, Utils (cn helper), LogoMark (+8 more)

### Community 8 - "Scroll Animation System"
Cohesion: 0.2
Nodes (10): AnimatedCounter Component, AnimatedCounter IntersectionObserver Usage, AnimatedCounter requestAnimationFrame Cubic Ease-Out, Architecture Decision: Tailwind v4 via CSS Custom Properties, RevealWrapper Component, RevealWrapper CSS Classes (reveal / in), RevealWrapper IntersectionObserver Scroll Reveal, clsx Dependency (+2 more)

### Community 9 - "Architecture & Brand Concepts"
Cohesion: 0.33
Nodes (6): Architecture Decision: Next.js App Router Route Groups, Concept: Celestial â€” Algerian ERP Software Company Site, SVG: Next.js Wordmark Logo, SVG: Vercel Logo (White Triangle), useScrollNav Hook, useScrollNav window scroll Listener

### Community 12 - "Build Config"
Cohesion: 0.67
Nodes (3): ESLint Config, Next.js Config, PostCSS Config (Tailwind v4)

### Community 13 - "Memory & Knowledge System"
Cohesion: 0.67
Nodes (3): Obsidian Vault Welcome Note (Bienvenue), Concept: Graphify Structural Memory for Context Efficiency, Concept: Obsidian Vault for Declarative Memory

## Knowledge Gaps
- **38 isolated node(s):** `ESLint Config`, `Next.js TypeScript Env Declarations`, `PostCSS Config (Tailwind v4)`, `SvgDefs Component`, `Nav Component` (+33 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **6 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `Database Type Definition` connect `Admin Form Actions` to `Doc Viewer Logic`, `Devis & CRM Flow`?**
  _High betweenness centrality (0.124) - this node is a cross-community bridge._
- **Why does `createClient()` connect `Devis & CRM Flow` to `Home Page Sections`?**
  _High betweenness centrality (0.077) - this node is a cross-community bridge._
- **Why does `createClient()` connect `Admin Form Actions` to `Admin Auth & Navigation`?**
  _High betweenness centrality (0.055) - this node is a cross-community bridge._
- **Are the 2 inferred relationships involving `Supabase Server Client Factory` (e.g. with `DB Table: changelogs` and `DB Table: devis`) actually correct?**
  _`Supabase Server Client Factory` has 2 INFERRED edges - model-reasoned connections that need verification._
- **Are the 9 inferred relationships involving `Site Route Group Layout` (e.g. with `Root Layout (app/layout.tsx)` and `Accueil (Home) Page`) actually correct?**
  _`Site Route Group Layout` has 9 INFERRED edges - model-reasoned connections that need verification._
- **What connects `ESLint Config`, `Next.js TypeScript Env Declarations`, `PostCSS Config (Tailwind v4)` to the rest of the system?**
  _38 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Admin Form Actions` be split into smaller, more focused modules?**
  _Cohesion score 0.06 - nodes in this community are weakly interconnected._