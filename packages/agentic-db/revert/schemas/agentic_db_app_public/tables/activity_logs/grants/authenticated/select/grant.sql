-- Revert: schemas/agentic_db_app_public/tables/activity_logs/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".activity_logs FROM authenticated;


