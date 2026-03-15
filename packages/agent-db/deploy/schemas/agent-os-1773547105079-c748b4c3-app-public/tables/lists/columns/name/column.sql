-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/columns/updated_at/alterations/alt0000003083


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".lists 
  ADD COLUMN name text;

