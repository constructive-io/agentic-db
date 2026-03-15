-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/completed_at/alterations/alt0000003122


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habit_logs 
  ALTER COLUMN completed_at DROP NOT NULL;


