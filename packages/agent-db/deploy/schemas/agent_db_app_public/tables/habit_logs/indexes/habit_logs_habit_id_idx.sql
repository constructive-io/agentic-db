-- Deploy: schemas/agent_db_app_public/tables/habit_logs/indexes/habit_logs_habit_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/habit_id/column
-- requires: schemas/agent_db_app_public/tables/habits/indexes/habits_category_idx


CREATE INDEX habit_logs_habit_id_idx ON agent_db_app_public.habit_logs USING BTREE ( habit_id );

