-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/due_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/title/alterations/alt0000003052


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".reminders 
  ADD COLUMN due_at timestamptz;

