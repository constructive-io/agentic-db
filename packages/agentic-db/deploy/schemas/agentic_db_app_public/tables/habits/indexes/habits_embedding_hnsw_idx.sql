-- Deploy: schemas/agentic_db_app_public/tables/habits/indexes/habits_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/habits/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/habits/columns/embedding_text/column


CREATE INDEX habits_embedding_hnsw_idx ON "agentic_db_app_public".habits USING hnsw ( embedding vector_cosine_ops );

