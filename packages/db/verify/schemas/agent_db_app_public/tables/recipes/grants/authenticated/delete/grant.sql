-- Verify: schemas/agent_db_app_public/tables/recipes/grants/authenticated/delete/grant


SELECT verify_table_grant('agent_db_app_public.recipes', 'delete', 'authenticated');


