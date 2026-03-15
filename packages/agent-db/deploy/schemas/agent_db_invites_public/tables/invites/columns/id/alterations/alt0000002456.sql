-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/id/alterations/alt0000002456
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/id/column


ALTER TABLE "agent_db_invites_public".invites 
  ALTER COLUMN id SET NOT NULL;

