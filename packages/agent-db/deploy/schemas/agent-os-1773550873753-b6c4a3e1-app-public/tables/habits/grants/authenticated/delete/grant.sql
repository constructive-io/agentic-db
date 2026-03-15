-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habits/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/reminders/columns/embedding/column


GRANT DELETE ON "agent-os-1773550873753-b6c4a3e1-app-public".habits TO authenticated;

