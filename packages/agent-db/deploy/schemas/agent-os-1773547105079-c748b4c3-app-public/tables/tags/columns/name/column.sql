-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/updated_at/alterations/alt0000002496


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tags 
  ADD COLUMN name text;

