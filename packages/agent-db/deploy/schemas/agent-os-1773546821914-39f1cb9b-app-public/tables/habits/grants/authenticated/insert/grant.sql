-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/reminders/columns/embedding/column


GRANT INSERT ON "agent-os-1773546821914-39f1cb9b-app-public".habits TO authenticated;

