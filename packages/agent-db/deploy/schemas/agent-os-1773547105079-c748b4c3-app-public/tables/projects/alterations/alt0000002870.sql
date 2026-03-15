-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/alterations/alt0000002870
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".projects 
  DISABLE ROW LEVEL SECURITY;

