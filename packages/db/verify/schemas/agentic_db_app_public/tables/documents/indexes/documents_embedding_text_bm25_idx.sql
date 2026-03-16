-- Verify: schemas/agentic_db_app_public/tables/documents/indexes/documents_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.documents', 'documents_embedding_text_bm25_idx');


