-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/columns/name/alterations/alt0000002904
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/columns/updated_at/alterations/alt0000002903


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".repositories 
  ALTER COLUMN name SET NOT NULL;

