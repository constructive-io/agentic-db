-- Deploy: schemas/agentic_db_app_public/tables/task_chunks/indexes/task_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/prompts/indexes/prompts_content_bm25_idx


CREATE INDEX task_chunks_embedding_hnsw_idx ON agentic_db_app_public.task_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

