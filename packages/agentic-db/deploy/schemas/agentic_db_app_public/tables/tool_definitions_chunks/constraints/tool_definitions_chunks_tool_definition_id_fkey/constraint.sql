-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions_chunks/constraints/tool_definitions_chunks_tool_definition_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
  ADD CONSTRAINT tool_definitions_chunks_tool_definition_id_fkey 
    FOREIGN KEY(tool_definition_id) 
    REFERENCES agentic_db_app_public.tool_definitions (id) 
    ON DELETE CASCADE;

