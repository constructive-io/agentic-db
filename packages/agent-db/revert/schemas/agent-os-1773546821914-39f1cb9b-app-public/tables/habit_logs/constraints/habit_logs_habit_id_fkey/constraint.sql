-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
  DROP CONSTRAINT habit_logs_habit_id_fkey;


