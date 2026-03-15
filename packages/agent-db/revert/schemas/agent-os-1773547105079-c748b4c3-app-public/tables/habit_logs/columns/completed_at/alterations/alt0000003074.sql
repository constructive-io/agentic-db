-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/completed_at/alterations/alt0000003074


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  ALTER COLUMN completed_at DROP NOT NULL;


