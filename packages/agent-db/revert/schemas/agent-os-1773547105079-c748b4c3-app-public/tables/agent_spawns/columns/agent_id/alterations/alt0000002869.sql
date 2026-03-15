-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/columns/agent_id/alterations/alt0000002869


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_spawns 
  ALTER COLUMN agent_id DROP NOT NULL;


