-- Revert: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/updated_at/alterations/alt0000009637


ALTER TABLE agentic_db_memberships_public.app_owner_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


