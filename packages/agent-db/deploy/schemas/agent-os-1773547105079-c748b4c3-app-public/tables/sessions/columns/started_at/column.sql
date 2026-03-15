-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/started_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/agent_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
  ADD COLUMN started_at timestamptz;

