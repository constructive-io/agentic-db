-- Verify: schemas/agentic_db_storage_public/tables/files/indexes/files_created_at_idx


SELECT verify_index('agentic_db_storage_public.files', 'files_created_at_idx');


