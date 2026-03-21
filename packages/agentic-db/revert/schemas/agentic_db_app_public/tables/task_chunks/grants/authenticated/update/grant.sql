-- Revert: schemas/agentic_db_app_public/tables/task_chunks/grants/authenticated/update/grant


REVOKE UPDATE ON agentic_db_app_public.task_chunks FROM authenticated;


