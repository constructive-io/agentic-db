-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/priority/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notifications/columns/type/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notifications 
  ADD COLUMN priority text;

