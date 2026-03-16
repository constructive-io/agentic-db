-- Verify: schemas/agent_db_app_public/tables/reminders/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.reminders', 'insert', 'authenticated');


