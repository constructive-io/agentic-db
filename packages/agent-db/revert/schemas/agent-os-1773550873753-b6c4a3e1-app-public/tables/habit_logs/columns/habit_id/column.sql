-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/habit_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habit_logs 
  DROP COLUMN habit_id RESTRICT;


