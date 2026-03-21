-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/alterations/alt0000001325
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/table


ALTER TABLE "agentic_db_profiles_public".org_profile_definition_grants 
  DISABLE ROW LEVEL SECURITY;

