-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/read_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/priority/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notifications 
  ADD COLUMN read_at timestamptz;

