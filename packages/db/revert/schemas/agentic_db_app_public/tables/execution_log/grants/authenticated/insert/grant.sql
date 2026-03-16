-- Revert: schemas/agentic_db_app_public/tables/execution_log/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".execution_log FROM authenticated;


