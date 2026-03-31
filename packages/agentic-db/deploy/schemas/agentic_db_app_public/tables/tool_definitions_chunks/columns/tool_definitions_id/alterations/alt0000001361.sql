-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/tool_definitions_id/alterations/alt0000001361
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/tool_definitions_id/column


ALTER TABLE "agentic_db_app_public".tool_definitions_chunks 
  ALTER COLUMN tool_definitions_id SET NOT NULL;

