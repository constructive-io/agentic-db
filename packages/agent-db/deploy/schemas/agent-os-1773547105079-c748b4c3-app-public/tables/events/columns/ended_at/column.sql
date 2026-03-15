-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/ended_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/started_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".events 
  ADD COLUMN ended_at timestamptz;

