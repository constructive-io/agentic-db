-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/email_accounts/columns/sync_state/column


GRANT UPDATE ON "agent-os-1773550873753-b6c4a3e1-app-public".messages TO authenticated;

