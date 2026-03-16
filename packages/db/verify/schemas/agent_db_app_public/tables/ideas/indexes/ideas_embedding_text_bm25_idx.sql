-- Verify: schemas/agent_db_app_public/tables/ideas/indexes/ideas_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.ideas', 'ideas_embedding_text_bm25_idx');


