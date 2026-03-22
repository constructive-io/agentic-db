-- Revert: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/created_at/alterations/alt0000001313


ALTER TABLE agentic_db_memberships_public.app_owner_grants 
  ALTER COLUMN created_at DROP DEFAULT;


