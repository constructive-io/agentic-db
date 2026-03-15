-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/execution_log/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/embedding/column


GRANT INSERT ON "agent-os-1773551593867-bac64076-app-public".execution_log TO authenticated;

