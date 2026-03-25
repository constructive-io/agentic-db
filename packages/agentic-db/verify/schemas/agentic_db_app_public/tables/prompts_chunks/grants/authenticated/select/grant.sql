-- Verify: schemas/agentic_db_app_public/tables/prompts_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.prompts_chunks', 'select', 'authenticated');


