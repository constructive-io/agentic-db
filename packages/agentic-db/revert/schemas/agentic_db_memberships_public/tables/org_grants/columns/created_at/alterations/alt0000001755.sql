-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/columns/created_at/alterations/alt0000001755


ALTER TABLE agentic_db_memberships_public.org_grants 
  ALTER COLUMN created_at DROP DEFAULT;


