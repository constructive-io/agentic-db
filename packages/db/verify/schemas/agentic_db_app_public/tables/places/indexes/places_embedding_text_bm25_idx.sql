-- Verify: schemas/agentic_db_app_public/tables/places/indexes/places_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.places', 'places_embedding_text_bm25_idx');


