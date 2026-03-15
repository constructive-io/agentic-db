-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/id/alterations/alt0000002745
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/embedding/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".blueprints 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

