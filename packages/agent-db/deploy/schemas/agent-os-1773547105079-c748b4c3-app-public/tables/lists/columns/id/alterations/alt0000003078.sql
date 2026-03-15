-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/columns/id/alterations/alt0000003078
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/tags/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".lists 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

