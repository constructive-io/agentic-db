-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/profile_id/alterations/alt0000001335
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/profile_id/column


ALTER TABLE "agent_db_profiles_public".org_profile_definition_grants 
  ALTER COLUMN profile_id SET NOT NULL;

