-- Deploy: schemas/agentic_db_app_public/tables/habit_chunks/indexes/habit_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE INDEX habit_chunks_embedding_hnsw_idx ON "agentic_db_app_public".habit_chunks USING hnsw ( embedding vector_cosine_ops );

