-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/reminders/columns/embedding/column


GRANT DELETE ON "agent-os-1773547105079-c748b4c3-app-public".habits TO authenticated;

