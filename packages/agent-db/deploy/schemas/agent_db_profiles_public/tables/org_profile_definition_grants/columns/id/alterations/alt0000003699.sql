-- Deploy: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/id/alterations/alt0000003699
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_profiles_public/schema
-- requires: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/table
-- requires: schemas/agent_db_profiles_public/tables/org_profile_definition_grants/columns/id/column


ALTER TABLE "agent_db_profiles_public".org_profile_definition_grants 
  ALTER COLUMN id SET NOT NULL;

