-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/columns/updated_at/alterations/alt0000002964


ALTER TABLE agentic_db_memberships_public.org_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


