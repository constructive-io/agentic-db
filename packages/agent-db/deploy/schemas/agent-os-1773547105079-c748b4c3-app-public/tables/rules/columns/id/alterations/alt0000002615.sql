-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/id/alterations/alt0000002615
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/rules/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/columns/embedding/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".rules 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

