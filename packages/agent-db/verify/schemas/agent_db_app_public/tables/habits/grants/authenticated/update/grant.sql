-- Verify: schemas/agent_db_app_public/tables/habits/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.habits', 'update', 'authenticated');


