-- Verify: schemas/agent_db_app_public/tables/tasks/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.tasks', 'update', 'authenticated');


