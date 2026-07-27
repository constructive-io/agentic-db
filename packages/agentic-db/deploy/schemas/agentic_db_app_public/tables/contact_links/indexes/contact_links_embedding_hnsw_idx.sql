-- Deploy: schemas/agentic_db_app_public/tables/contact_links/indexes/contact_links_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_links/table
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/embedding/column


CREATE INDEX contact_links_embedding_hnsw_idx ON agentic_db_app_public.contact_links USING hnsw ( embedding vector_cosine_ops );

