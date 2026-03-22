-- Verify: schemas/agentic_db_app_public/tables/agent_log_chunks/indexes/agent_log_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.agent_log_chunks', 'agent_log_chunks_embedding_text_bm25_idx');


