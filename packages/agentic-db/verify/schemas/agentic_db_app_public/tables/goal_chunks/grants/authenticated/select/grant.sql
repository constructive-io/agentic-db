-- Verify: schemas/agentic_db_app_public/tables/goal_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.goal_chunks', 'select', 'authenticated');


