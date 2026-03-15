-- Verify: schemas/agent_db_app_public/tables/habits/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.habits', 'insert', 'authenticated');


