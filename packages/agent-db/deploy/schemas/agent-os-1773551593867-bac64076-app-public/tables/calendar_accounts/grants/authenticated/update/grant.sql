-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_accounts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/columns/embedding/column


GRANT UPDATE ON "agent-os-1773551593867-bac64076-app-public".calendar_accounts TO authenticated;

