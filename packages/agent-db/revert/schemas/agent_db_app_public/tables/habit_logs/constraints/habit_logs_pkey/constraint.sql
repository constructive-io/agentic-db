-- Revert: schemas/agent_db_app_public/tables/habit_logs/constraints/habit_logs_pkey/constraint


ALTER TABLE agent_db_app_public.habit_logs 
  DROP CONSTRAINT habit_logs_pkey;


