-- Verify: schemas/agentic_db_app_public/tables/codebas_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.codebas_chunks', 'insert', 'authenticated');


