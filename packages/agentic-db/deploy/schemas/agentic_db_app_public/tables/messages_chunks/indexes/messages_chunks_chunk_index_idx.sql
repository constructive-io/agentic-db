-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/indexes/messages_chunks_chunk_index_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


CREATE INDEX messages_chunks_chunk_index_idx ON agentic_db_app_public.messages_chunks USING BTREE ( chunk_index );

