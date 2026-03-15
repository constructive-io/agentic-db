-- Verify: schemas/agent_db_app_public/tables/habit_logs/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.habit_logs', 'update', 'authenticated');


