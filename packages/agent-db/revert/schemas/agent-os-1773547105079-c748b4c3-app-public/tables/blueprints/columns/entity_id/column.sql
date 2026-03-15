-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".blueprints 
  DROP COLUMN entity_id RESTRICT;


