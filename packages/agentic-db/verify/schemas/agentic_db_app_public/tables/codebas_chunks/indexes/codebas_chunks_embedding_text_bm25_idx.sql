-- Verify: schemas/agentic_db_app_public/tables/codebas_chunks/indexes/codebas_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.codebas_chunks', 'codebas_chunks_embedding_text_bm25_idx');


