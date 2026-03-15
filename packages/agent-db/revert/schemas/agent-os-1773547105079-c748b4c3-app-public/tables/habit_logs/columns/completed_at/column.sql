-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/completed_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  DROP COLUMN completed_at RESTRICT;


