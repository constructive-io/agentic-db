-- Deploy: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-simple-secrets/tables/secrets/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-simple-secrets".secrets 
  ADD COLUMN name text;

