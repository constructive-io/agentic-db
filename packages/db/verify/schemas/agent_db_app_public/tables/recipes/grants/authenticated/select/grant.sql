-- Verify: schemas/agent_db_app_public/tables/recipes/grants/authenticated/select/grant


SELECT verify_table_grant('agent_db_app_public.recipes', 'select', 'authenticated');


