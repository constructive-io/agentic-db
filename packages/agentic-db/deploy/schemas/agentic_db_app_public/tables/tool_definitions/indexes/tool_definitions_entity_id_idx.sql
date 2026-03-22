-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/indexes/tool_definitions_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/tool_results/column
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/entity_id/column


CREATE INDEX tool_definitions_entity_id_idx ON agentic_db_app_public.tool_definitions USING BTREE ( entity_id );

