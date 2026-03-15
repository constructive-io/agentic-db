-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/invite_count/alterations/alt0000003976
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/invite_count/column


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN invite_count SET NOT NULL;

