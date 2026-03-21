-- Revert: schemas/agentic_db_app_public/tables/execution_log/grants/authenticated/update/grant


REVOKE UPDATE ON "agentic_db_app_public".execution_log FROM authenticated;


