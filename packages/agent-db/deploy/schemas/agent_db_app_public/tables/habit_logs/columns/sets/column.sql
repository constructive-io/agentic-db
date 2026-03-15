-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/sets/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/reps/column


ALTER TABLE agent_db_app_public.habit_logs 
  ADD COLUMN sets int;

