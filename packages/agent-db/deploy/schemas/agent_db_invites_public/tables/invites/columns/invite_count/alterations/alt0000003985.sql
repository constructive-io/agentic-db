-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/invite_count/alterations/alt0000003985
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/invite_count/column


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN invite_count SET NOT NULL;

