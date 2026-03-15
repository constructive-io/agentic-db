-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/table


ALTER TABLE agent_db_invites_public.claimed_invites 
  ENABLE ROW LEVEL SECURITY;

