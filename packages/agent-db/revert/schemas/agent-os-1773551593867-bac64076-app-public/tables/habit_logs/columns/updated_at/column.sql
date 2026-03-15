-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habit_logs 
  DROP COLUMN updated_at RESTRICT;


