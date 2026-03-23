-- Verify: schemas/agentic_db_app_public/tables/goals_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.goals_chunks', 'update', 'authenticated');


