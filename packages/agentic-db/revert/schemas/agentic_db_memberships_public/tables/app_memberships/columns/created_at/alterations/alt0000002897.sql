-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/created_at/alterations/alt0000002897


ALTER TABLE agentic_db_memberships_public.app_memberships 
  ALTER COLUMN created_at DROP DEFAULT;


