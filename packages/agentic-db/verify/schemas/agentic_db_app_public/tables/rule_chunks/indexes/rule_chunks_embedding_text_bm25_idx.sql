-- Verify: schemas/agentic_db_app_public/tables/rule_chunks/indexes/rule_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.rule_chunks', 'rule_chunks_embedding_text_bm25_idx');


