-- Revert: schemas/agentic_db_profiles_public/tables/app_profiles/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_profiles_public".app_profiles FROM authenticated;


