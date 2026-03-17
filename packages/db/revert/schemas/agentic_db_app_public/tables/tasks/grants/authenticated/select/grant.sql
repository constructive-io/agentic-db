-- Revert: schemas/agentic_db_app_public/tables/tasks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".tasks FROM authenticated;


