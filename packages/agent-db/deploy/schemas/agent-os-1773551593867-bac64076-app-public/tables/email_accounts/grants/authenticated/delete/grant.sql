-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/email_accounts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/constraints/chunks_repository_id_fkey/constraint


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".email_accounts TO authenticated;

