-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/id/alterations/alt0000000313
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/id/column


ALTER TABLE agent_db_memberships_public.org_memberships 
  ALTER COLUMN id SET NOT NULL;

