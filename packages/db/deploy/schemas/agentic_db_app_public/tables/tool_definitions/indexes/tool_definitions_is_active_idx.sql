-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/indexes/tool_definitions_is_active_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/is_active/column


CREATE INDEX tool_definitions_is_active_idx ON "agentic_db_app_public".tool_definitions USING BTREE ( is_active );

