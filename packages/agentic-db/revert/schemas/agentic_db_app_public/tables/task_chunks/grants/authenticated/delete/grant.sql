-- Revert: schemas/agentic_db_app_public/tables/task_chunks/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_app_public".task_chunks FROM authenticated;


