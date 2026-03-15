-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/description/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tools 
  ADD COLUMN type text;

