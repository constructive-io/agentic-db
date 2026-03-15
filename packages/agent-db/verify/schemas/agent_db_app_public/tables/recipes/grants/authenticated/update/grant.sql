-- Verify: schemas/agent_db_app_public/tables/recipes/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_app_public.recipes', 'update', 'authenticated');


