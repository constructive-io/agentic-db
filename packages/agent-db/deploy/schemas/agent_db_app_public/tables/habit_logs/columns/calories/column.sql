-- Deploy: schemas/agent_db_app_public/tables/habit_logs/columns/calories/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/weight_unit/column


ALTER TABLE agent_db_app_public.habit_logs 
  ADD COLUMN calories numeric;

