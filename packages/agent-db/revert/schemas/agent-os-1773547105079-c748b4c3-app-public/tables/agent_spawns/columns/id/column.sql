-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_spawns 
  DROP COLUMN id RESTRICT;


