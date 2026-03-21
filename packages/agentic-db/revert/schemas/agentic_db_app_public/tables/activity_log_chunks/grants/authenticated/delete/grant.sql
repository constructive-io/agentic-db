-- Revert: schemas/agentic_db_app_public/tables/activity_log_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".activity_log_chunks FROM authenticated;


