-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/embedding_stale/alterations/alt0000015483
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/embedding_stale/column



ALTER TABLE agentic_db_app_public.tool_definitions 
    ALTER COLUMN embedding_stale SET DEFAULT true;

