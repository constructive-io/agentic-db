-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/config/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/columns/credentials_ref/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
  ADD COLUMN config jsonb;

