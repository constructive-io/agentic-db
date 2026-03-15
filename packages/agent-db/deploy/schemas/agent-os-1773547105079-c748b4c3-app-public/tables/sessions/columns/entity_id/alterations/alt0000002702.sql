-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/entity_id/alterations/alt0000002702
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/columns/embedding/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
  ALTER COLUMN entity_id SET NOT NULL;

