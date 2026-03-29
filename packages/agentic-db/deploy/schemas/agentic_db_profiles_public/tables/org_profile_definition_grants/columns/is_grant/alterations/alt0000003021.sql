-- Deploy: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/is_grant/alterations/alt0000003021
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/table
-- requires: schemas/agentic_db_profiles_public/tables/org_profile_definition_grants/columns/is_grant/column



ALTER TABLE agentic_db_profiles_public.org_profile_definition_grants 
    ALTER COLUMN is_grant SET DEFAULT true;

