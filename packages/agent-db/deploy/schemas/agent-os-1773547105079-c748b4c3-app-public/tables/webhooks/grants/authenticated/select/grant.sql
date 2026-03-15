-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/last_synced_at/column


GRANT SELECT ON "agent-os-1773547105079-c748b4c3-app-public".webhooks TO authenticated;

