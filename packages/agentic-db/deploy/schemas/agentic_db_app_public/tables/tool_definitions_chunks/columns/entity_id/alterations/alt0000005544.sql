-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/entity_id/alterations/alt0000005544
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

