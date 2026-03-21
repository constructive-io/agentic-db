-- Verify: schemas/agentic_db_app_public/tables/prompt_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.prompt_chunks', 'delete', 'authenticated');


