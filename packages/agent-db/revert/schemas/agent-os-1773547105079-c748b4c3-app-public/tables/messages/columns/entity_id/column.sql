-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/messages/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".messages 
  DROP COLUMN entity_id RESTRICT;


