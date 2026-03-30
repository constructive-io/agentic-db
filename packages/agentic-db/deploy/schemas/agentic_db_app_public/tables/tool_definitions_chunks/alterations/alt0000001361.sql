-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions_chunks/alterations/alt0000001361
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions_chunks/table
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


COMMENT ON TABLE "agentic_db_app_public".tool_definitions_chunks IS E'@@chunksOf {"parent_fk": "tool_definitions_id", "parent_table": "tool_definitions"}';

