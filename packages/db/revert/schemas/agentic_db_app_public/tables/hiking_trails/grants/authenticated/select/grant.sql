-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".hiking_trails FROM authenticated;


