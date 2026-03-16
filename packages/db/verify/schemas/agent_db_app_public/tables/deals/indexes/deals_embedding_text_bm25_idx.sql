-- Verify: schemas/agent_db_app_public/tables/deals/indexes/deals_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.deals', 'deals_embedding_text_bm25_idx');


