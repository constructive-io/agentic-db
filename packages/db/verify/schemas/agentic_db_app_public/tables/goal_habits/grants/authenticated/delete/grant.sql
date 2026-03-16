-- Verify: schemas/agentic_db_app_public/tables/goal_habits/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.goal_habits', 'delete', 'authenticated');


