-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/name/alterations/alt0000002456
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/updated_at/alterations/alt0000002455


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".events 
  ALTER COLUMN name SET NOT NULL;

