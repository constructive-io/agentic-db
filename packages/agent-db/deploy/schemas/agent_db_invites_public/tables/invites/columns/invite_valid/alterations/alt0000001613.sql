-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/invite_valid/alterations/alt0000001613
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/invite_valid/column


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN invite_valid SET NOT NULL;

