-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/id/alterations/alt0000002700
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
  ALTER COLUMN id SET NOT NULL;

