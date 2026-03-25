-- Deploy: schemas/agentic_db_app_public/tables/conversations_chunks/indexes/conversations_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/columns/embedding/column


CREATE INDEX conversations_chunks_embedding_hnsw_idx ON "agentic_db_app_public".conversations_chunks USING hnsw ( embedding vector_cosine_ops );

