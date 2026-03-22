-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/columns/id/column


ALTER TABLE agentic_db_memberships_public.app_grants 
  DROP COLUMN id RESTRICT;


