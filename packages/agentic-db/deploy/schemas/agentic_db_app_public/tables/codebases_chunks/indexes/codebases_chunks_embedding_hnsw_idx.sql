-- Deploy: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/table
-- requires: schemas/agentic_db_app_public/tables/projects/indexes/projects_priority_idx
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/columns/embedding/column


CREATE INDEX codebases_chunks_embedding_hnsw_idx ON "agentic_db_app_public".codebases_chunks USING hnsw ( embedding vector_cosine_ops );

