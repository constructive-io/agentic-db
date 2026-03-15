-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/habit_id/alterations/alt0000003121


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habit_logs 
  ALTER COLUMN habit_id DROP NOT NULL;


