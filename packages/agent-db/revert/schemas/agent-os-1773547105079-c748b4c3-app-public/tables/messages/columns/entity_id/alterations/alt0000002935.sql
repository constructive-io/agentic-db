-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/columns/entity_id/alterations/alt0000002935


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".messages 
  ALTER COLUMN entity_id DROP NOT NULL;


