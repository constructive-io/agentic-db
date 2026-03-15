-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/search_tsv/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".integrations 
  ENABLE ROW LEVEL SECURITY;

