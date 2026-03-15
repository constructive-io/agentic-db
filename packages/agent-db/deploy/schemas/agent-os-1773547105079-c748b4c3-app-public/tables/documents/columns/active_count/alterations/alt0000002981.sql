-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/active_count/alterations/alt0000002981
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/overview/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/active_count/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
    ALTER COLUMN active_count SET DEFAULT 0;

