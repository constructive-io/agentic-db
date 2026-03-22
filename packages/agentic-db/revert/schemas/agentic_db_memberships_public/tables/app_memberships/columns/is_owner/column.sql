-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_owner/column


ALTER TABLE agentic_db_memberships_public.app_memberships 
  DROP COLUMN is_owner RESTRICT;


