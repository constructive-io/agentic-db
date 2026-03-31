-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_app_public".tasks_chunks FROM authenticated;


