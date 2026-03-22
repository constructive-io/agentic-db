-- Verify: schemas/agentic_db_app_public/tables/itinerary_item_chunks/indexes/itinerary_item_chunks_embedding_text_bm25_idx


SELECT verify_index('agentic_db_app_public.itinerary_item_chunks', 'itinerary_item_chunks_embedding_text_bm25_idx');


