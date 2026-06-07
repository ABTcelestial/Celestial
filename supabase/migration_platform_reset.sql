-- ============================================================
-- RESET : supprime toutes les tables platform (dans l'ordre FK)
-- À exécuter AVANT migration_platform.sql si les tables existent déjà
-- ============================================================

drop table if exists erp_sync_logs         cascade;
drop table if exists platform_messages     cascade;
drop table if exists platform_notifications cascade;
drop table if exists erp_data              cascade;
drop table if exists workspace_table_access cascade;
drop table if exists erp_table_definitions cascade;
drop table if exists platform_members      cascade;
drop table if exists platform_workspaces   cascade;
