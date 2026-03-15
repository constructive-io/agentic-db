-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/email_accounts/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


GRANT INSERT ON "agent-os-1773550873753-b6c4a3e1-app-public".email_accounts TO authenticated;

