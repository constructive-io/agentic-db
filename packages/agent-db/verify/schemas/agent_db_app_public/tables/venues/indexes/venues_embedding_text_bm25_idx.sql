-- Verify: schemas/agent_db_app_public/tables/venues/indexes/venues_embedding_text_bm25_idx


SELECT verify_index('agent_db_app_public.venues', 'venues_embedding_text_bm25_idx');


