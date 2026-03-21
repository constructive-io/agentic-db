-- Verify: schemas/agentic_db_app_public/tables/repository_chunks/indexes/repository_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.repository_chunks', 'repository_chunks_embedding_text_bm25_idx');


