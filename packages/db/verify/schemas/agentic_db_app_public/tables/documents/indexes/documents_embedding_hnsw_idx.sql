-- Verify: schemas/agentic_db_app_public/tables/documents/indexes/documents_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.documents', 'documents_embedding_hnsw_idx');


