-- Verify: schemas/agentic_db_app_public/tables/trip_chunks/indexes/trip_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.trip_chunks', 'trip_chunks_embedding_text_bm25_idx');


