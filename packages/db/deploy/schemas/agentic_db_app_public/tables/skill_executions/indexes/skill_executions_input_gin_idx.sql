-- Deploy: schemas/agentic_db_app_public/tables/skill_executions/indexes/skill_executions_input_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_executions/table
-- requires: schemas/agentic_db_app_public/tables/skill_executions/columns/input/column
-- requires: schemas/agentic_db_app_public/tables/integrations/indexes/integrations_config_gin_idx


CREATE INDEX skill_executions_input_gin_idx ON "agentic_db_app_public".skill_executions USING GIN ( input );

