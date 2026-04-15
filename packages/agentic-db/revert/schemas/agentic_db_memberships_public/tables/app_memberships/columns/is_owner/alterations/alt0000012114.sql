-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_owner/alterations/alt0000012114


ALTER TABLE agentic_db_memberships_public.app_memberships 
  ALTER COLUMN is_owner DROP NOT NULL;


