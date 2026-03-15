-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/table


ALTER TABLE agent_db_invites_public.org_claimed_invites 
  ENABLE ROW LEVEL SECURITY;

