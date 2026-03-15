-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/recurrence/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
  ADD COLUMN status text;

