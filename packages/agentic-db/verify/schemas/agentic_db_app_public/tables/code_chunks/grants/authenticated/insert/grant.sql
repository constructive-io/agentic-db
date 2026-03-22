-- Verify: schemas/agentic_db_app_public/tables/code_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.code_chunks', 'insert', 'authenticated');


