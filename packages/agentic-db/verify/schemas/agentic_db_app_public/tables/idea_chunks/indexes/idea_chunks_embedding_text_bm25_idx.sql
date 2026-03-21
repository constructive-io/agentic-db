-- Verify: schemas/agentic_db_app_public/tables/idea_chunks/indexes/idea_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.idea_chunks', 'idea_chunks_embedding_text_bm25_idx');


