-- Verify: schemas/agentic_db_app_public/tables/documents_chunks/indexes/documents_chunks_updated_at_idx


SELECT verify_index('agentic_db_app_public.documents_chunks', 'documents_chunks_updated_at_idx');


