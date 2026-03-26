-- Revert: schemas/agentic_db_app_public/tables/activity_logs_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".activity_logs_chunks FROM authenticated;


