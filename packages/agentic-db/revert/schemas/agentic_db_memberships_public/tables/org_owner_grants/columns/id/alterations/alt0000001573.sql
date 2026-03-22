-- Revert: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/id/alterations/alt0000001573


ALTER TABLE agentic_db_memberships_public.org_owner_grants 
  ALTER COLUMN id DROP NOT NULL;


