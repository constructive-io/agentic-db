-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/status/alterations/alt0000002992
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/config/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/status/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
    ALTER COLUMN status SET DEFAULT 'active';

