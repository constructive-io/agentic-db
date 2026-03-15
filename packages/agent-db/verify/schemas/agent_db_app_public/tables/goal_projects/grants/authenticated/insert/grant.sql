-- Verify: schemas/agent_db_app_public/tables/goal_projects/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.goal_projects', 'insert', 'authenticated');


