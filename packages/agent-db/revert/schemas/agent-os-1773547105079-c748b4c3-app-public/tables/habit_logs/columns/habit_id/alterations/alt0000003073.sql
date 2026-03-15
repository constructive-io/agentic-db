-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/habit_id/alterations/alt0000003073


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  ALTER COLUMN habit_id DROP NOT NULL;


