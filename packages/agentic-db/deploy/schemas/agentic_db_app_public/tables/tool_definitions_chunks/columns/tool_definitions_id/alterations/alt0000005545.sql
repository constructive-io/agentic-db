-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/tool_definitions_id/alterations/alt0000005545
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/tool_definitions_id/column


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  ALTER COLUMN tool_definitions_id SET NOT NULL;

