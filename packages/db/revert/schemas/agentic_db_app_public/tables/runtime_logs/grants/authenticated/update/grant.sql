-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/grants/authenticated/update/grant


REVOKE UPDATE ON "agentic_db_app_public".runtime_logs FROM authenticated;


