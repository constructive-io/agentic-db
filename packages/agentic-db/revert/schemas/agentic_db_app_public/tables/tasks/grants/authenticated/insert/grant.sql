-- Revert: schemas/agentic_db_app_public/tables/tasks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".tasks FROM authenticated;


