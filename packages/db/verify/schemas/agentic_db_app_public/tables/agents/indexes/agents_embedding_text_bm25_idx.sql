-- Verify: schemas/agentic_db_app_public/tables/agents/indexes/agents_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.agents', 'agents_embedding_text_bm25_idx');


