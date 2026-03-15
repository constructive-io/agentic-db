-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/alterations/alt0000000311
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table


ALTER TABLE agent_db_memberships_public.org_memberships 
  DISABLE ROW LEVEL SECURITY;

