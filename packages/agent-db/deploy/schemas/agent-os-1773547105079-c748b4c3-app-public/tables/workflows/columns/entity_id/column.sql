-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflows 
  ADD COLUMN entity_id uuid;

