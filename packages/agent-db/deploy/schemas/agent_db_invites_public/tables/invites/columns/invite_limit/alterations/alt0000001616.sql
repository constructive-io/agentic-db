-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/invite_limit/alterations/alt0000001616
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/invite_limit/column


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN invite_limit SET NOT NULL;

