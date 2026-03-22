-- Revert: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/created_at/alterations/alt0000001301


ALTER TABLE agentic_db_memberships_public.app_admin_grants 
  ALTER COLUMN created_at DROP DEFAULT;


