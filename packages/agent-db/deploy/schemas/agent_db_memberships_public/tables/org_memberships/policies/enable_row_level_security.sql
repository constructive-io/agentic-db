-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table


ALTER TABLE agent_db_memberships_public.org_memberships 
  ENABLE ROW LEVEL SECURITY;

