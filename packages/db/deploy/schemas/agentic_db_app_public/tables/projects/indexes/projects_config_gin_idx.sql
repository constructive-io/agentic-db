-- Deploy: schemas/agentic_db_app_public/tables/projects/indexes/projects_config_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/projects/columns/config/column
-- requires: schemas/agentic_db_app_public/tables/tool_executions/indexes/tool_executions_status_idx


CREATE INDEX projects_config_gin_idx ON "agentic_db_app_public".projects USING GIN ( config );

