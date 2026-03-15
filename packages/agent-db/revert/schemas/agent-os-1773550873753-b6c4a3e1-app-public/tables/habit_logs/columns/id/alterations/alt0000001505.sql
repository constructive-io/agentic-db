-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/id/alterations/alt0000001505


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habit_logs 
  ALTER COLUMN id DROP NOT NULL;


