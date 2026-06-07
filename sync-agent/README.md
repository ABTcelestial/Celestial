# Celestial Sync Agent

Script Node.js qui synchronise les données du PostgreSQL local (installé avec le logiciel Delphi) vers Supabase Cloud.

## Prérequis

- Node.js 18+ installé sur le PC client
- Accès au PostgreSQL local du logiciel Celestial ERP
- Clé de licence fournie par l'équipe Celestial

## Installation

```bash
cd sync-agent
npm install
```

## Configuration

Modifiez `config.json` avec les informations fournies par Celestial :

```json
{
  "licence_key": "votre-cle-de-licence",
  "supabase_url": "https://xxx.supabase.co",
  "anon_key": "eyJ...",
  "service_role_key": "eyJ...",
  "pg_url": "postgresql://postgres:motdepasse@localhost:5432/nom_base",
  "tables": ["clients", "factures", "articles"]
}
```

| Champ | Description |
|---|---|
| `licence_key` | Clé unique de votre workspace (fournie par Celestial) |
| `pg_url` | Connexion à votre PostgreSQL local |
| `tables` | Liste des tables à synchroniser (noms exacts dans PostgreSQL) |

## Utilisation

```bash
# Synchroniser toutes les tables configurées
npm run sync

# Synchroniser une seule table
node index.js --table clients
```

## Automatisation (Windows)

Pour synchroniser automatiquement, utilisez le Planificateur de tâches Windows :

1. Ouvrez "Planificateur de tâches"
2. Créer une tâche de base
3. Déclencheur : tous les jours / à l'ouverture de session
4. Action : `node C:\chemin\vers\sync-agent\index.js --all`

## Sécurité

- La `licence_key` identifie votre workspace — ne la partagez pas
- Les données sont transmises en HTTPS vers Supabase
- Seules les tables listées dans `config.json` sont synchronisées
- Les noms de tables sont validés (caractères a-z, 0-9, _ uniquement)
