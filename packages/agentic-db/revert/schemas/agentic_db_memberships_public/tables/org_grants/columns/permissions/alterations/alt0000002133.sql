-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/columns/permissions/alterations/alt0000002133


ALTER TABLE agentic_db_memberships_public.org_grants 
  ALTER COLUMN permissions DROP NOT NULL;


