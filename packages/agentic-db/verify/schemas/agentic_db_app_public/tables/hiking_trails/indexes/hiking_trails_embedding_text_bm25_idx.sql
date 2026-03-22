-- Verify: schemas/agentic_db_app_public/tables/hiking_trails/indexes/hiking_trails_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.hiking_trails', 'hiking_trails_embedding_text_bm25_idx');


