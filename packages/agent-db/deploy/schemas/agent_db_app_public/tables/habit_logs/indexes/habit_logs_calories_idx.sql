-- Deploy: schemas/agent_db_app_public/tables/habit_logs/indexes/habit_logs_calories_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/calories/column
-- requires: schemas/agent_db_app_public/tables/habit_logs/indexes/habit_logs_distance_idx


CREATE INDEX habit_logs_calories_idx ON "agent_db_app_public".habit_logs USING BTREE ( calories );

