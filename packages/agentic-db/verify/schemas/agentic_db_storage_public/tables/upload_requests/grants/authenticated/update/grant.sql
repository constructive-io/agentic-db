-- Verify: schemas/agentic_db_storage_public/tables/upload_requests/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_storage_public.upload_requests', 'update', 'authenticated');


