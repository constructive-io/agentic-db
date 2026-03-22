-- Verify: schemas/agentic_db_app_public/tables/venue_links/indexes/venue_links_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.venue_links', 'venue_links_embedding_hnsw_idx');


