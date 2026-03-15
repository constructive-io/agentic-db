-- Deploy: schemas/agent_db_app_public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/embedding/column


ALTER TABLE agent_db_app_public.habit_logs 
  ADD CONSTRAINT habit_logs_habit_id_fkey 
    FOREIGN KEY(habit_id) 
    REFERENCES agent_db_app_public.habits (id) 
    ON DELETE CASCADE;

