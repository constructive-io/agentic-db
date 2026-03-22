-- Verify: schemas/agentic_db_app_public/tables/codebases/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.codebases', 'insert', 'authenticated');


