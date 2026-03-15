-- Verify: schemas/agent_db_app_public/tables/goals/grants/authenticated/insert/grant


SELECT verify_table_grant('agent_db_app_public.goals', 'insert', 'authenticated');


