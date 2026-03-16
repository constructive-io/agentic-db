-- Verify: schemas/agent_db_app_public/tables/reminders/indexes/reminders_title_gin_idx


SELECT verify_index('agent_db_app_public.reminders', 'reminders_title_gin_idx');


