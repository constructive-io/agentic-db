-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".execution_log 
  ADD COLUMN entity_id uuid;

