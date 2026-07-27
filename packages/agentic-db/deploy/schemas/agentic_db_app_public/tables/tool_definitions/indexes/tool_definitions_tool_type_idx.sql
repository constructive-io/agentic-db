-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/indexes/tool_definitions_tool_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/tool_type/column


CREATE INDEX tool_definitions_tool_type_idx ON agentic_db_app_public.tool_definitions USING BTREE ( tool_type );

