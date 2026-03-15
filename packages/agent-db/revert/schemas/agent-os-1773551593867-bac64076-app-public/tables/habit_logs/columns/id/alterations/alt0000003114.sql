-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/id/alterations/alt0000003114


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habit_logs 
  ALTER COLUMN id DROP NOT NULL;


