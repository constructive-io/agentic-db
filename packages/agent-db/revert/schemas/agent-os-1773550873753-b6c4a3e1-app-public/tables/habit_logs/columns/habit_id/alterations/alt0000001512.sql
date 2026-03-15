-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/habit_id/alterations/alt0000001512


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habit_logs 
  ALTER COLUMN habit_id DROP NOT NULL;


