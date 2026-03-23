-- Verify: schemas/agentic_db_app_public/tables/goals_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.goals_chunks', 'delete', 'authenticated');


