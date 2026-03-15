-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/name/alterations/alt0000002990
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/updated_at/alterations/alt0000002989


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
  ALTER COLUMN name SET NOT NULL;

