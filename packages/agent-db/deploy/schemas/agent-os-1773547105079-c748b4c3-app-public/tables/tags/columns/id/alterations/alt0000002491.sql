-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/id/alterations/alt0000002491
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/interactions/columns/embedding/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tags 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

