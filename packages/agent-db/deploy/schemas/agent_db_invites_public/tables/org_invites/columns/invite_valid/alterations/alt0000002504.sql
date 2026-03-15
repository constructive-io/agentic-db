-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/invite_valid/alterations/alt0000002504
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/invite_valid/column


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN invite_valid SET NOT NULL;

