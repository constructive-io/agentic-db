-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/parent_agent_id/alterations/alt0000001263


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_spawns 
  ALTER COLUMN parent_agent_id DROP NOT NULL;


