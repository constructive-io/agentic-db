-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/columns/is_grant/alterations/alt0000001747


ALTER TABLE agentic_db_memberships_public.org_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


