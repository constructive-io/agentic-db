-- Verify: schemas/agentic_db_app_public/tables/documents/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.documents', 'insert', 'authenticated');


