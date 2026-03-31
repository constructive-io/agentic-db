-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/metadata/alterations/alt0000003484
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/metadata/column



ALTER TABLE agentic_db_app_public.tool_definitions_chunks 
    ALTER COLUMN metadata SET DEFAULT '{}'::jsonb;

