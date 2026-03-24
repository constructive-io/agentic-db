-- Deploy: schemas/agentic_db_app_public/tables/projects_chunks/indexes/projects_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


CREATE INDEX projects_chunks_embedding_hnsw_idx ON agentic_db_app_public.projects_chunks USING hnsw ( embedding vector_cosine_ops );

