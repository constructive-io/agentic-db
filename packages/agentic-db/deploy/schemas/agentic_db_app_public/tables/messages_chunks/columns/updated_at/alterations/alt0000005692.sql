-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/columns/updated_at/alterations/alt0000005692
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.messages_chunks 
  ALTER COLUMN updated_at SET NOT NULL;

