-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habits/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/reminders/columns/embedding/column


GRANT UPDATE ON "agent-os-1773551593867-bac64076-app-public".habits TO authenticated;

