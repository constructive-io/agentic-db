-- Revert: schemas/agent_db_memberships_public/tables/org_grants/columns/id/alterations/alt0000000418


ALTER TABLE agent_db_memberships_public.org_grants 
  ALTER COLUMN id DROP NOT NULL;


