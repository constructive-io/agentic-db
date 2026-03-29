-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/embedding_stale/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.tool_definitions 
  ADD COLUMN embedding_stale boolean;

