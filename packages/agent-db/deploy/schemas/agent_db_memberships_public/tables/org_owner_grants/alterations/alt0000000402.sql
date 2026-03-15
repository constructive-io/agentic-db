-- Deploy: schemas/agent_db_memberships_public/tables/org_owner_grants/alterations/alt0000000402
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_owner_grants/table


ALTER TABLE agent_db_memberships_public.org_owner_grants 
  DISABLE ROW LEVEL SECURITY;

