-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/columns/is_grant/alterations/alt0000001866


ALTER TABLE agentic_db_memberships_public.app_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


