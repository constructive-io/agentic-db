-- Deploy: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_executions/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/tool_executions/columns/entity_id/column


CREATE INDEX tool_executions_entity_id_idx ON agentic_db_app_public.tool_executions USING BTREE ( entity_id );

