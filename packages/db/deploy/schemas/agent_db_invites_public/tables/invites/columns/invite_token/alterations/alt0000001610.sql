-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/invite_token/alterations/alt0000001610
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/invite_token/column


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN invite_token SET NOT NULL;

