-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/messages/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/email_accounts/columns/sync_state/column


GRANT SELECT ON "agent-os-1773546821914-39f1cb9b-app-public".messages TO authenticated;

