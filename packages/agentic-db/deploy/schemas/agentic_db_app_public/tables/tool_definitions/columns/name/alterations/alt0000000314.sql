-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/name/alterations/alt0000000314
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


ALTER TABLE agentic_db_app_public.tool_definitions 
  ALTER COLUMN name SET NOT NULL;

