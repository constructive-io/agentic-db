-- Verify: schemas/agentic_db_app_public/tables/prompts_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.prompts_chunks', 'delete', 'authenticated');


