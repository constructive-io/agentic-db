-- Verify: schemas/agent_db_app_public/tables/goals/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.goals', 'update', 'authenticated');


