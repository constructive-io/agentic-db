-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_tools/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_tools 
  DROP COLUMN entity_id RESTRICT;


