-- Deploy: schemas/agentic_db_app_public/tables/reminder_chunks/indexes/reminder_chunks_embedding_hnsw_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/table
-- requires: schemas/agentic_db_app_public/tables/reminder_chunks/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/idea_chunks/indexes/idea_chunks_chunk_index_idx


CREATE INDEX reminder_chunks_embedding_hnsw_idx ON agentic_db_app_public.reminder_chunks USING hnsw ( embedding vector_cosine_ops ) WITH ( m = 16, ef_construction = 128 );

