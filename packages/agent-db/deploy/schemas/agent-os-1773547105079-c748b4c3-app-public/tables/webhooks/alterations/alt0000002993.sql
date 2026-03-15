-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/alterations/alt0000002993
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/last_synced_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".webhooks 
  DISABLE ROW LEVEL SECURITY;

