-- Deploy: schemas/agentic_db_app_public/tables/runtime_states/indexes/runtime_states_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_states/table
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding_text/column


CREATE INDEX runtime_states_embedding_hnsw_idx ON "agentic_db_app_public".runtime_states USING hnsw ( embedding vector_cosine_ops );

