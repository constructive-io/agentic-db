-- Verify: schemas/agentic_db_app_public/tables/document_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.document_chunks', 'select', 'authenticated');


