-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/duration_minutes/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
  DROP COLUMN duration_minutes RESTRICT;


