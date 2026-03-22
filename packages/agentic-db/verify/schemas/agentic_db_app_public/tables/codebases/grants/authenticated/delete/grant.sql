-- Verify: schemas/agentic_db_app_public/tables/codebases/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.codebases', 'delete', 'authenticated');


