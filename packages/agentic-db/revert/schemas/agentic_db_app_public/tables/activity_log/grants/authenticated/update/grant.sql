-- Revert: schemas/agentic_db_app_public/tables/activity_log/grants/authenticated/update/grant


REVOKE UPDATE ON "agentic_db_app_public".activity_log FROM authenticated;


