-- Verify: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.touchpoints', 'touchpoints_embedding_text_bm25_idx');


