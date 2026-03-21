-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.reminder_chunks FROM authenticated;


