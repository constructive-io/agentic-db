-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/id/alterations/alt0000002963
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/embedding/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expenses 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

