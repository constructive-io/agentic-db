-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/id/alterations/alt0000002973
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/tags/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

