-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_verified/column


ALTER TABLE agentic_db_memberships_public.app_memberships 
  DROP COLUMN is_verified RESTRICT;


