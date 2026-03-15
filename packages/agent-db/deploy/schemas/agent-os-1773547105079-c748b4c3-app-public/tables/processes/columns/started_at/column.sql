-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/started_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/command/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  ADD COLUMN started_at timestamptz;

