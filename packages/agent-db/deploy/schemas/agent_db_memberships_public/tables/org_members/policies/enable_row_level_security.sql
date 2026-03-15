-- Deploy: schemas/agent_db_memberships_public/tables/org_members/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_members/table


ALTER TABLE agent_db_memberships_public.org_members 
  ENABLE ROW LEVEL SECURITY;

