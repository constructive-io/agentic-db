-- Deploy: schemas/agent_db_app_public/tables/activity_log/indexes/activity_logs_data_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/activity_log/table
-- requires: schemas/agent_db_app_public/tables/activity_log/columns/data/column
-- requires: schemas/agent_db_app_public/tables/skill_executions/indexes/skill_executions_output_gin_idx


CREATE INDEX activity_logs_data_gin_idx ON "agent_db_app_public".activity_log USING GIN ( data );

