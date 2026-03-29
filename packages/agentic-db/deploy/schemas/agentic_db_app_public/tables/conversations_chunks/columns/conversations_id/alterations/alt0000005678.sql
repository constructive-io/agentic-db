-- Deploy: schemas/agentic_db_app_public/tables/conversations_chunks/columns/conversations_id/alterations/alt0000005678
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/table
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/columns/conversations_id/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.conversations_chunks 
  ALTER COLUMN conversations_id SET NOT NULL;

