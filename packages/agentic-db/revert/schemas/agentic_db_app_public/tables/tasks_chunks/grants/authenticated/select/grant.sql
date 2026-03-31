-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.tasks_chunks FROM authenticated;


