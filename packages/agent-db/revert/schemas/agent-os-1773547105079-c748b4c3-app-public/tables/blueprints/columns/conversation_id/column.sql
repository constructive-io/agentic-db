-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/conversation_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".blueprints 
  DROP COLUMN conversation_id RESTRICT;


