-- Revert: schemas/agentic_db_profiles_public/tables/app_profile_definition_grants/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_profiles_public".app_profile_definition_grants FROM authenticated;


