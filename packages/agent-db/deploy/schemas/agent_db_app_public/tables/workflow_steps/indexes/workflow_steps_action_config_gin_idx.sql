-- Deploy: schemas/agent_db_app_public/tables/workflow_steps/indexes/workflow_steps_action_config_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflow_steps/table
-- requires: schemas/agent_db_app_public/tables/tools/indexes/tools_input_schema_gin_idx
-- requires: schemas/agent_db_app_public/tables/workflow_steps/columns/action_config/column


CREATE INDEX workflow_steps_action_config_gin_idx ON agent_db_app_public.workflow_steps USING GIN ( action_config );

