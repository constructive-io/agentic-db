-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/sender_id/alterations/alt0000001645
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/sender_id/column


ALTER TABLE "agent_db_invites_public".org_invites 
  ALTER COLUMN sender_id SET NOT NULL;

