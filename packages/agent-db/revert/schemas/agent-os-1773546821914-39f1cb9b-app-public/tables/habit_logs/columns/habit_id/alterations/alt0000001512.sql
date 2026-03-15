-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/habit_id/alterations/alt0000001512


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
  ALTER COLUMN habit_id DROP NOT NULL;


