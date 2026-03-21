-- Verify: schemas/agentic_db_app_public/tables/files/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.files', 'insert', 'authenticated');


