-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/alterations/alt0000002982
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/search_tsv/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
  DISABLE ROW LEVEL SECURITY;

