-- Deploy: schemas/agent_db_profiles_public/tables/org_profiles/alterations/alt0000000434
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profiles/table


ALTER TABLE agent_db_profiles_public.org_profiles 
  DISABLE ROW LEVEL SECURITY;

