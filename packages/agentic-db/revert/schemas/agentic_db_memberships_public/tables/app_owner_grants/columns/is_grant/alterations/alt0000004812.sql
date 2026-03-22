-- Revert: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/is_grant/alterations/alt0000004812


ALTER TABLE agentic_db_memberships_public.app_owner_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


