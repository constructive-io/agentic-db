-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/goals/columns/entity_id/alterations/alt0000002649


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".goals 
  ALTER COLUMN entity_id DROP NOT NULL;


