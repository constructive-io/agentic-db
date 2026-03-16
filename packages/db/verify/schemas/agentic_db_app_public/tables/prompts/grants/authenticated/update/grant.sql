-- Verify: schemas/agentic_db_app_public/tables/prompts/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.prompts', 'update', 'authenticated');


