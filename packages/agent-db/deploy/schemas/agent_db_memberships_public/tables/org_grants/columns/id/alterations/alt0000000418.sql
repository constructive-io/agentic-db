-- Deploy: schemas/agent_db_memberships_public/tables/org_grants/columns/id/alterations/alt0000000418
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_grants/table
-- requires: schemas/agent_db_memberships_public/tables/org_grants/columns/id/column


ALTER TABLE agent_db_memberships_public.org_grants 
  ALTER COLUMN id SET NOT NULL;

