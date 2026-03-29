-- Deploy: schemas/agentic_db_app_public/tables/tasks/indexes/tasks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE INDEX tasks_embedding_hnsw_idx ON agentic_db_app_public.tasks USING hnsw ( embedding vector_cosine_ops );

