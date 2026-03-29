-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/columns/updated_at/alterations/alt0000002692


ALTER TABLE agentic_db_memberships_public.app_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


