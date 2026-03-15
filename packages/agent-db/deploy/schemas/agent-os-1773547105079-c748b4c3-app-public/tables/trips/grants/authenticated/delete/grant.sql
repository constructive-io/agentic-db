-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/notes/column


GRANT DELETE ON "agent-os-1773547105079-c748b4c3-app-public".trips TO authenticated;

