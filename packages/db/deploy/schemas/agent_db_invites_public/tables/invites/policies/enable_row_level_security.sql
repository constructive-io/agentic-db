-- Deploy: schemas/agent_db_invites_public/tables/invites/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


ALTER TABLE "agent_db_invites_public".invites 
  ENABLE ROW LEVEL SECURITY;

