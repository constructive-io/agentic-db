-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/id/alterations/alt0000001505


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
  ALTER COLUMN id DROP NOT NULL;


