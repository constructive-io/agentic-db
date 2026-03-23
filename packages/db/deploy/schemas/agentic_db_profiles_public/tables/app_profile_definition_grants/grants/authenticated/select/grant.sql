-- Deploy: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_profiles_public/schema
-- requires: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/table


GRANT SELECT ON "agentic_db_profiles_public".app_profile_definition_grants TO authenticated;

