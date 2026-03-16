-- Revert: schemas/agentic_db_app_public/tables/goals/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".goals FROM authenticated;


