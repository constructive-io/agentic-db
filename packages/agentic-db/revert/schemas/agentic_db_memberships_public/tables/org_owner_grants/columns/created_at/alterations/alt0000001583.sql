-- Revert: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/created_at/alterations/alt0000001583


ALTER TABLE agentic_db_memberships_public.org_owner_grants 
  ALTER COLUMN created_at DROP DEFAULT;


