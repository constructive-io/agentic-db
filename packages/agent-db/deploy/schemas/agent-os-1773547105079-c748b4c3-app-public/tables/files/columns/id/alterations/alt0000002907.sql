-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/columns/id/alterations/alt0000002907
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/repositories/columns/embedding/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".files 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

