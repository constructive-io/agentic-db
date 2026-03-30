-- Deploy: schemas/agentic_db_app_public/tables/runtime_states_chunks/indexes/runtime_states_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx
-- requires: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/embedding/column


CREATE INDEX runtime_states_chunks_embedding_hnsw_idx ON "agentic_db_app_public".runtime_states_chunks USING hnsw ( embedding vector_cosine_ops );

