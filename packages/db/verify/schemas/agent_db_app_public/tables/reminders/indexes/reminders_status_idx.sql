-- Verify: schemas/agent_db_app_public/tables/reminders/indexes/reminders_status_idx


SELECT verify_index('agent_db_app_public.reminders', 'reminders_status_idx');


