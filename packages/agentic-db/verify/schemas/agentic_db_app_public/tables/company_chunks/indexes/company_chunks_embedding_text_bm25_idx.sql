-- Verify: schemas/agentic_db_app_public/tables/company_chunks/indexes/company_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.company_chunks', 'company_chunks_embedding_text_bm25_idx');


