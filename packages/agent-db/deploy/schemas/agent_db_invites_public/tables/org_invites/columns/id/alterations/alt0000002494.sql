-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/id/alterations/alt0000002494
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/id/column


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN id SET NOT NULL;

