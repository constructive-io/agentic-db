-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/description/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goals 
  DROP COLUMN description RESTRICT;


