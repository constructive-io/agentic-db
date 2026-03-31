-- Revert: schemas/agentic_db_app_public/tables/activity_logs/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".activity_logs FROM authenticated;


