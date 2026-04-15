-- Verify: schemas/agentic_db_storage_public/tables/upload_requests/indexes/upload_requests_updated_at_idx


SELECT verify_index('agentic_db_storage_public.upload_requests', 'upload_requests_updated_at_idx');


