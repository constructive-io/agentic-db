-- Revert: schemas/agentic_db_memberships_public/tables/app_grants/columns/id/alterations/alt0000004366


ALTER TABLE agentic_db_memberships_public.app_grants 
  ALTER COLUMN id DROP NOT NULL;


