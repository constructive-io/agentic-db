-- Verify: schemas/agentic_db_app_public/tables/event_links/indexes/event_links_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.event_links', 'event_links_embedding_hnsw_idx');


