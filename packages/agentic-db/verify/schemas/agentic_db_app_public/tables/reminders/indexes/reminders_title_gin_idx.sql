-- Verify: schemas/agentic_db_app_public/tables/reminders/indexes/reminders_title_gin_idx


SELECT verify_index('agentic_db_app_public.reminders', 'reminders_title_gin_idx');


