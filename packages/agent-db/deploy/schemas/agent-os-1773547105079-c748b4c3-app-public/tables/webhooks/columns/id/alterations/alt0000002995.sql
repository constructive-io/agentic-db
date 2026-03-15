-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/id/alterations/alt0000002995
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/last_synced_at/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".webhooks 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

