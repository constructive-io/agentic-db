-- Verify: schemas/agentic_db_storage_public/tables/upload_requests/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_storage_public.upload_requests', 'select', 'authenticated');


