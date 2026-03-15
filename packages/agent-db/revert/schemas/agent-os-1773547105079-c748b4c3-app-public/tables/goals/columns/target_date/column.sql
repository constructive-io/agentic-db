-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/target_date/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goals 
  DROP COLUMN target_date RESTRICT;


