# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
npm run dev      # Start dev server (Next.js)
npm run build    # Production build
npm run lint     # ESLint
npm run start    # Start production server
```

No test suite is configured.

## Architecture

**Celestial** is a Next.js 16 (App Router) marketing + admin site for an Algerian ERP software company. The stack is Next.js 16 + React 19 + TypeScript + Tailwind v4 + Supabase.

### Route groups

```
app/
  layout.tsx          ← root layout (SvgDefs + globals.css)
  (site)/             ← public site, has Nav + Footer
    page.tsx          ← home
    a-propos/
    changelogs/
    contact/
    design-system/
    documentation/
    guide/
    offres/
  admin/              ← protected CMS, has AdminNav
    login/
    page.tsx          ← dashboard
    changelogs/       ← CRUD
    devis/            ← read-only inbox
    documentation/    ← CRUD
    offres-config/    ← suite_config + comparatif_modules
    parametres/       ← contact_info
    produits/         ← CRUD
  actions/
    devis.ts          ← server action: submitDevis()
```

### Auth & middleware

`proxy.ts` exports the Supabase auth middleware function **and** the `config.matcher`. It is imported by `middleware.ts` (if present) or used directly. All `/admin/*` routes redirect to `/admin/login` when unauthenticated. Authenticated users are bounced away from `/admin/login`.

### Supabase clients

- `lib/supabase/server.ts` — `createClient()` for Server Components and Server Actions (uses `next/headers` cookies)
- `lib/supabase/client.ts` — `createClient()` for Client Components (browser)
- `lib/supabase/types.ts` — full `Database` type + enums (`DevisStatut`, `ChangelogProduit`, `DocProduit`)

Always use the server client in Server Components and the browser client in `'use client'` components.

### Database tables (Supabase / PostgreSQL)

| Table | Purpose |
|---|---|
| `devis` | Quote requests from visitors (anon insert, admin read) |
| `changelogs` | Product release notes (produit: business\|pay\|compta\|company) |
| `produits` | ERP product catalogue with modules, prix in DZD |
| `contact_info` | Single-row (id=1) contact details |
| `doc_pages` | Documentation pages organised by produit + section + ordre |
| `suite_config` | Suite bundle config (single-row, id=1) |
| `comparatif_modules` | Feature comparison grid rows |

RLS is enabled on all tables. Anon role can insert `devis` and read `changelogs`, `produits` (actif=true), `contact_info`, `doc_pages`. Auth role has full access.

Schema and seed data are in `supabase/schema.sql`. Migrations for newer tables are in `supabase/migration_*.sql`.

### Design system

Styles live in `app/globals.css` via CSS custom properties (no Tailwind config file — Tailwind v4 reads from CSS). Key tokens: `--bg-void`, `--gold`, `--gold-bright`, `--gold-soft`, `--glass`, `--glass-border`, `--hairline`, `--text-primary/secondary/muted/faint`, `--nav-h`, `--font-display`, `--r-sm/xs`.

- `SvgDefs` — renders hidden SVG with shared gradients (`lgGold`, `lgPurp`); mounted once in root layout
- `RevealWrapper` — scroll-triggered fade-in via IntersectionObserver; add `reveal` + `in` CSS classes
- `AnimatedCounter` — counts up to a target number on scroll
- `useScrollNav` — returns `scrolled: boolean` once page scrolls past threshold (used to style the sticky nav)
- `cn()` in `lib/utils.ts` — `clsx` + `tailwind-merge` utility

### Admin CMS pattern

Each admin resource follows the same pattern: a Server Component page fetches data via the server Supabase client and passes it to a `'use client'` form/list component in `components/admin/`. The client components mutate directly via the browser Supabase client (no separate API routes).

### Doc viewer

`components/docs/DocViewer.tsx` is a self-contained client component. It receives all `doc_pages` rows, builds an in-memory tree grouped by `produit → section → page`, and renders a 3-column layout (sidebar / content / TOC). Doc content is stored as raw HTML in `doc_pages.contenu` and rendered via `dangerouslySetInnerHTML`.

### Environment variables

```
NEXT_PUBLIC_SUPABASE_URL=
NEXT_PUBLIC_SUPABASE_ANON_KEY=
```

Both are required at build time and runtime. Copy `.env.local.example` → `.env.local` (or create `.env.local` manually).

## External Context & Memory Navigation

### Structural Memory (Graphify)
- This project utilizes Graphify to manage token context efficiently. 
- Before jumping blindly into editing deep hooks or component trees, check the structural map located in `graphify-out/graph.json` or run local graph queries.
- Do not read whole directories sequentially if structural relationships can be inferred from the graph.

### Declarative Memory (Obsidian Vault)
- High-level progress tracking, future feature specs, and multi-session logs live inside your local Obsidian vault directory.
- When finishing a development sprint, log a quick summary of changes to your Obsidian project logs folder to ensure clean continuity for the next session.