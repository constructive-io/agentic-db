-- Revert: schemas/agentic_db_app_public/tables/runtime_logs/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".runtime_logs FROM authenticated;


