-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/id/alterations/alt0000002601
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/id/column



ALTER TABLE agentic_db_profiles_public.org_profile_definition_grants 
    ALTER COLUMN id SET DEFAULT uuidv7();

