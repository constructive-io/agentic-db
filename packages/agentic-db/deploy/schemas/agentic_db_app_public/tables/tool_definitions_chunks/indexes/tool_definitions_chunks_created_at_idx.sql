-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions_chunks/indexes/tool_definitions_chunks_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/columns/created_at/column


CREATE INDEX tool_definitions_chunks_created_at_idx ON agentic_db_app_public.tool_definitions_chunks ( created_at );

