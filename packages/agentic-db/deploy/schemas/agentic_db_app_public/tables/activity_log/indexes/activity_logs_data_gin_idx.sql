-- Deploy: schemas/agentic_db_app_public/tables/activity_log/indexes/activity_logs_data_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_log/table
-- requires: schemas/agentic_db_app_public/tables/activity_log/columns/data/column
-- requires: schemas/agentic_db_app_public/tables/workflow_steps/indexes/workflow_steps_action_config_gin_idx


CREATE INDEX activity_logs_data_gin_idx ON "agentic_db_app_public".activity_log USING GIN ( data );

