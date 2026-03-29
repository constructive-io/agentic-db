-- Deploy: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/code_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx


CREATE INDEX code_chunks_embedding_hnsw_idx ON agentic_db_app_public.code_chunks USING hnsw ( embedding vector_cosine_ops );

