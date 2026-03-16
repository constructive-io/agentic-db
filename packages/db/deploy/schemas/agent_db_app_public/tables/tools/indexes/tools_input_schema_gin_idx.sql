-- Deploy: schemas/agent_db_app_public/tables/tools/indexes/tools_input_schema_gin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/input_schema/column
-- requires: schemas/agent_db_app_public/tables/habit_logs/indexes/habit_logs_data_gin_idx


CREATE INDEX tools_input_schema_gin_idx ON "agent_db_app_public".tools USING GIN ( input_schema );

