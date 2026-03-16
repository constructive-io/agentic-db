-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_permissions/alterations/alt0000001307
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_permissions/table


ALTER TABLE "agent_db_profiles_public".org_profile_permissions 
  DISABLE ROW LEVEL SECURITY;

