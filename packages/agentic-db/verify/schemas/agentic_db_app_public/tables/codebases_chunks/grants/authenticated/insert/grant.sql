-- Verify: schemas/agentic_db_app_public/tables/codebases_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.codebases_chunks', 'insert', 'authenticated');


