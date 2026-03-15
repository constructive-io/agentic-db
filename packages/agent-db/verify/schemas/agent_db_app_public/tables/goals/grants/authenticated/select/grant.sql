-- Verify: schemas/agent_db_app_public/tables/goals/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.goals', 'select', 'authenticated');


