-- Revert: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/updated_at/alterations/alt0000001739


ALTER TABLE agentic_db_memberships_public.org_owner_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


