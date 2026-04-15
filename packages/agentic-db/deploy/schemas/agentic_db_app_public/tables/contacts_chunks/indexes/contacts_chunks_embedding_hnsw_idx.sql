-- Deploy: schemas/agentic_db_app_public/tables/contacts_chunks/indexes/contacts_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/table
-- requires: schemas/agentic_db_app_public/tables/contacts_chunks/columns/embedding/column


CREATE INDEX contacts_chunks_embedding_hnsw_idx ON "agentic_db_app_public".contacts_chunks USING hnsw ( embedding vector_cosine_ops );

