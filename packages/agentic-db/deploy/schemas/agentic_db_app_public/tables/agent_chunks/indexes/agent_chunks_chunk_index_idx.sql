-- Deploy: schemas/agentic_db_app_public/tables/agent_chunks/indexes/agent_chunks_chunk_index_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/agent_chunks/indexes/agent_chunks_embedding_text_bm25_idx


CREATE INDEX agent_chunks_chunk_index_idx ON "agentic_db_app_public".agent_chunks USING BTREE ( chunk_index );

