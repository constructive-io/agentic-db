-- Deploy: schemas/agentic_db_app_public/tables/agents_chunks/indexes/agents_chunks_chunk_index_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agents_chunks/columns/chunk_index/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


CREATE INDEX agents_chunks_chunk_index_idx ON agentic_db_app_public.agents_chunks USING BTREE ( chunk_index );

