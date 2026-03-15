-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".templates 
  ENABLE ROW LEVEL SECURITY;

