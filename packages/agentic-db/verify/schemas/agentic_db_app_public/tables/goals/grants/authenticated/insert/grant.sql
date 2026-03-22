-- Verify: schemas/agentic_db_app_public/tables/goals/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.goals', 'insert', 'authenticated');


