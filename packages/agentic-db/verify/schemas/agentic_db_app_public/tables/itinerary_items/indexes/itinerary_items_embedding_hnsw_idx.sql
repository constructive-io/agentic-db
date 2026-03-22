-- Verify: schemas/agentic_db_app_public/tables/itinerary_items/indexes/itinerary_items_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.itinerary_items', 'itinerary_items_embedding_hnsw_idx');


