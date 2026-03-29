-- Revert: schemas/agentic_db_app_public/tables/tasks/grants/authenticated/delete/grant


REVOKE DELETE ON agentic_db_app_public.tasks FROM authenticated;


