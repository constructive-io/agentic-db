-- Deploy: schemas/agentic_db_app_public/tables/task_chunks/indexes/task_chunks_chunk_index_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_chunks/table
-- requires: schemas/agentic_db_app_public/tables/task_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/task_chunks/indexes/task_chunks_embedding_text_bm25_idx


CREATE INDEX task_chunks_chunk_index_idx ON agentic_db_app_public.task_chunks USING BTREE ( chunk_index );

