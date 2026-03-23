-- Revert: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/updated_at/column


ALTER TABLE agentic_db_memberships_public.app_admin_grants 
  DROP COLUMN updated_at RESTRICT;


