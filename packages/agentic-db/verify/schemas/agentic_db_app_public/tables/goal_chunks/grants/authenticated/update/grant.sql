-- Verify: schemas/agentic_db_app_public/tables/goal_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.goal_chunks', 'update', 'authenticated');


