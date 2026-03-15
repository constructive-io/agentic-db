-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/completed_at/alterations/alt0000001513


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habit_logs 
  ALTER COLUMN completed_at DROP NOT NULL;


