-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/columns/name/alterations/alt0000003032
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/columns/updated_at/alterations/alt0000003031


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".trips 
  ALTER COLUMN name SET NOT NULL;

