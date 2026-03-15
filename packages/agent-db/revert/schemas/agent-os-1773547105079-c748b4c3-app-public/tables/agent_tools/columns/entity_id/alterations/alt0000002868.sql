-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_tools/columns/entity_id/alterations/alt0000002868


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_tools 
  ALTER COLUMN entity_id DROP NOT NULL;


