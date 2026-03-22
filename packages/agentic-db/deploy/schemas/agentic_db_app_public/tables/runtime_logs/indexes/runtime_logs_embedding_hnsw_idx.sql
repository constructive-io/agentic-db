-- Deploy: schemas/agentic_db_app_public/tables/runtime_logs/indexes/runtime_logs_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/table
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/runtime_logs/columns/embedding_text/column


CREATE INDEX runtime_logs_embedding_hnsw_idx ON agentic_db_app_public.runtime_logs USING hnsw ( embedding vector_cosine_ops );

