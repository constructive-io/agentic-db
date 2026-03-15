-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/id/alterations/alt0000002754
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/blueprints/columns/embedding/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

