-- Verify: schemas/agentic_db_app_public/tables/prompts_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.prompts_chunks', 'update', 'authenticated');


