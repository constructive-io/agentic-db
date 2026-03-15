-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/columns/child_agent_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/columns/parent_agent_id/alterations/alt0000002824


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_spawns 
  ADD COLUMN child_agent_id uuid;

