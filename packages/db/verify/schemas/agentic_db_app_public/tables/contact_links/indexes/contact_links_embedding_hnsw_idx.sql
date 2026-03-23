-- Verify: schemas/agentic_db_app_public/tables/contact_links/indexes/contact_links_embedding_hnsw_idx


SELECT verify_index('agentic_db_app_public.contact_links', 'contact_links_embedding_hnsw_idx');


