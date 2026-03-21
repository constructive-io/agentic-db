-- Verify: schemas/agentic_db_app_public/tables/document_chunks/indexes/document_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.document_chunks', 'document_chunks_embedding_text_bm25_idx');


