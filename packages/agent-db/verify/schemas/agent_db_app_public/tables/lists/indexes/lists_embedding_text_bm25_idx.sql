-- Verify: schemas/agent_db_app_public/tables/lists/indexes/lists_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.lists', 'lists_embedding_text_bm25_idx');


