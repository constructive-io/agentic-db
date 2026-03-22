-- Deploy: schemas/agentic_db_app_public/tables/event_links/indexes/event_links_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/url/alterations/alt0000005762


CREATE INDEX event_links_embedding_hnsw_idx ON agentic_db_app_public.event_links USING hnsw ( embedding vector_cosine_ops );

