-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/columns/type/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".lists 
  ADD COLUMN tags citext[];

