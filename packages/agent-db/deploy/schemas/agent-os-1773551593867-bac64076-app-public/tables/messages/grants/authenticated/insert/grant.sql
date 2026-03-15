-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/messages/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/columns/sync_state/column


GRANT INSERT ON "agent-os-1773551593867-bac64076-app-public".messages TO authenticated;

