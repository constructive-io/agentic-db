-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/columns/embedding/column


GRANT DELETE ON "agent-os-1773546821914-39f1cb9b-app-public".calendar_accounts TO authenticated;

