-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/tags/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
  ENABLE ROW LEVEL SECURITY;

