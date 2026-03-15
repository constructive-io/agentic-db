-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/columns/id/alterations/alt0000003025
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/billing_subscriptions/columns/notes/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".trips 
  ALTER COLUMN id SET NOT NULL;

