-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/is_read/alterations/alt0000002980
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/is_read/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/source_type/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
    ALTER COLUMN is_read SET DEFAULT false;

