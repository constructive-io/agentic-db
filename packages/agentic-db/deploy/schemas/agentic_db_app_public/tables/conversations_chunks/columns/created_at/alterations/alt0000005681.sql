-- Deploy: schemas/agentic_db_app_public/tables/conversations_chunks/columns/created_at/alterations/alt0000005681
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/table
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_chunk_index_idx



ALTER TABLE agentic_db_app_public.conversations_chunks 
    ALTER COLUMN created_at SET DEFAULT now();

