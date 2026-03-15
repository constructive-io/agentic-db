-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/id/alterations/alt0000002916
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/columns/hash/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chunks 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

