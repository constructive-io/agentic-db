-- Revert: schemas/agentic_db_memberships_public/tables/org_grants/columns/id/alterations/alt0000003250


ALTER TABLE agentic_db_memberships_public.org_grants 
  ALTER COLUMN id DROP NOT NULL;


