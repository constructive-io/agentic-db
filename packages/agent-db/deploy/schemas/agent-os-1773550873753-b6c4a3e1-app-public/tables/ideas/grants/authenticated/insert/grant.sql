-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/ideas/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


GRANT INSERT ON "agent-os-1773550873753-b6c4a3e1-app-public".ideas TO authenticated;

