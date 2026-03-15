-- Deploy: schemas/agent_db_app_public/tables/habit_logs/indexes/habit_logs_tags_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/tags/column
-- requires: schemas/agent_db_app_public/tables/habits/indexes/habits_tags_gin_idx


CREATE INDEX habit_logs_tags_gin_idx ON "agent_db_app_public".habit_logs USING GIN ( tags );

