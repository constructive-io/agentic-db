-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/updated_at/column


ALTER TABLE agentic_db_memberships_public.app_memberships 
  DROP COLUMN updated_at RESTRICT;


