-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/is_active/alterations/alt0000002784
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/is_active/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/auth_method/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tools 
    ALTER COLUMN is_active SET DEFAULT true;

