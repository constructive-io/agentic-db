-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/id/alterations/alt0000002829
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/context_relations/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agent_spawns/columns/completed_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".context_relations 
  ALTER COLUMN id SET NOT NULL;

