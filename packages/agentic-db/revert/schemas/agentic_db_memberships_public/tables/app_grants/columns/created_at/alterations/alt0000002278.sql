-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/columns/created_at/alterations/alt0000002278


ALTER TABLE agentic_db_memberships_public.app_grants 
  ALTER COLUMN created_at DROP DEFAULT;


