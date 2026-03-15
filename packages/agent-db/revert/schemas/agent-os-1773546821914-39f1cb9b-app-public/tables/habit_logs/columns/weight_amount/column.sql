-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/weight_amount/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
  DROP COLUMN weight_amount RESTRICT;


