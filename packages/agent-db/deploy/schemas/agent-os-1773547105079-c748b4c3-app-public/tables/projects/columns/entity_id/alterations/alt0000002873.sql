-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/entity_id/alterations/alt0000002873
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".projects 
  ALTER COLUMN entity_id SET NOT NULL;

