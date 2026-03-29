-- Revert: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/is_grant/alterations/alt0000002658


ALTER TABLE agentic_db_memberships_public.app_admin_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


