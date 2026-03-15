-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/completed_at/alterations/alt0000001513


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
  ALTER COLUMN completed_at DROP NOT NULL;


