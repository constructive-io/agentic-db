-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/is_active/alterations/alt0000003003
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/secret/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/webhooks/columns/is_active/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".webhooks 
    ALTER COLUMN is_active SET DEFAULT true;

