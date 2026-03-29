-- Deploy: schemas/agentic_db_app_public/tables/memories_chunks/indexes/memories_chunks_memory_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memories_chunks/columns/memory_id/column
-- requires: schemas/agentic_db_app_public/tables/codebases_chunks/indexes/codebases_chunks_chunk_index_idx


CREATE INDEX memories_chunks_memory_id_idx ON agentic_db_app_public.memories_chunks USING BTREE ( memory_id );

