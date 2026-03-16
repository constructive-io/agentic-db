-- Verify: schemas/agentic_db_app_public/tables/documents/indexes/documents_last_accessed_at_idx


SELECT verify_index('agentic_db_app_public.documents', 'documents_last_accessed_at_idx');


