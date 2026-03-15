-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/columns/id/alterations/alt0000002787
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/workflows/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/embedding/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".workflows 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

