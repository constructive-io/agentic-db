-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/columns/created_at/column


ALTER TABLE agentic_db_memberships_public.app_grants 
  DROP COLUMN created_at RESTRICT;


