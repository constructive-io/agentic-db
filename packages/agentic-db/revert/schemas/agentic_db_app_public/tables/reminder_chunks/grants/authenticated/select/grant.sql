-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/grants/authenticated/select/grant


REVOKE SELECT ON agentic_db_app_public.reminder_chunks FROM authenticated;


