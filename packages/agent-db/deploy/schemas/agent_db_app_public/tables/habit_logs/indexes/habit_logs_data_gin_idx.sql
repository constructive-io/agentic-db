-- Deploy: schemas/agent_db_app_public/tables/habit_logs/indexes/habit_logs_data_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/data/column
-- requires: schemas/agent_db_app_public/tables/templates/indexes/templates_tags_gin_idx


CREATE INDEX habit_logs_data_gin_idx ON agent_db_app_public.habit_logs USING GIN ( data );

