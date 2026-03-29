-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/id/alterations/alt0000005641
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.conversations 
    ALTER COLUMN id SET DEFAULT uuidv7();

