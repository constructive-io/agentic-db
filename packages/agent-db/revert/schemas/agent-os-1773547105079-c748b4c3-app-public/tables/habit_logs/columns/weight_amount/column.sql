-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/weight_amount/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  DROP COLUMN weight_amount RESTRICT;


