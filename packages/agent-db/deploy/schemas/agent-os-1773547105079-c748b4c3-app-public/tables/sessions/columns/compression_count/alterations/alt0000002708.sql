-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/compression_count/alterations/alt0000002708
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/archived_messages/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/compression_count/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
    ALTER COLUMN compression_count SET DEFAULT 0;

