-- Revert: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/is_grant/alterations/alt0000002119


ALTER TABLE agentic_db_memberships_public.org_owner_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


