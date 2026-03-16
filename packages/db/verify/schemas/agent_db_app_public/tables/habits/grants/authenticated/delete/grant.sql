-- Verify: schemas/agent_db_app_public/tables/habits/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.habits', 'delete', 'authenticated');


