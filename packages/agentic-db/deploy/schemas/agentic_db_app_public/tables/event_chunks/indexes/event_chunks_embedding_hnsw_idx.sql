-- Deploy: schemas/agentic_db_app_public/tables/event_chunks/indexes/event_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_chunks/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/event_chunks/columns/embedding_text/column


CREATE INDEX event_chunks_embedding_hnsw_idx ON "agentic_db_app_public".event_chunks USING hnsw ( embedding vector_cosine_ops );

