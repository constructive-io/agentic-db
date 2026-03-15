-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/provider/alterations/alt0000002991
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/provider/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/name/alterations/alt0000002990


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
  ALTER COLUMN provider SET NOT NULL;

