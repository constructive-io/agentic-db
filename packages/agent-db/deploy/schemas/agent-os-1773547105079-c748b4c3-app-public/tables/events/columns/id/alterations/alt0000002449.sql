-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/id/alterations/alt0000002449
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".events 
  ALTER COLUMN id SET NOT NULL;

