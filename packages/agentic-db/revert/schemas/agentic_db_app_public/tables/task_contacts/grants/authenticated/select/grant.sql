-- Revert: schemas/agentic_db_app_public/tables/task_contacts/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.task_contacts FROM authenticated;


