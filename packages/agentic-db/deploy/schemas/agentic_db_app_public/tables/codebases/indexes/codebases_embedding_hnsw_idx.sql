-- Deploy: schemas/agentic_db_app_public/tables/codebases/indexes/codebases_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/codebases/table
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/codebases/columns/embedding_text/column


CREATE INDEX codebases_embedding_hnsw_idx ON agentic_db_app_public.codebases USING hnsw ( embedding vector_cosine_ops );

