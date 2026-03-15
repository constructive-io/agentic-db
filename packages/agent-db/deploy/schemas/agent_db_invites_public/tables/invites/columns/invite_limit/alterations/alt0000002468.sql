-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/invite_limit/alterations/alt0000002468
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/invite_limit/column


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN invite_limit SET NOT NULL;

