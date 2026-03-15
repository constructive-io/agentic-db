-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


GRANT DELETE ON "agent-os-1773547105079-c748b4c3-app-public".ideas TO authenticated;

