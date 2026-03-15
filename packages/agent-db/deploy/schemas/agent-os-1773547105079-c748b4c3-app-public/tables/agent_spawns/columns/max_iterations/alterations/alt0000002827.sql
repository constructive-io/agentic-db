-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/columns/max_iterations/alterations/alt0000002827
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/columns/result/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/columns/max_iterations/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".agent_spawns 
    ALTER COLUMN max_iterations SET DEFAULT 15;

