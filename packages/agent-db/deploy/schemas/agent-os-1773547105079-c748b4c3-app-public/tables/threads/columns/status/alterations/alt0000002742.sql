-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/status/alterations/alt0000002742
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/status/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/threads/columns/summary/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".threads 
    ALTER COLUMN status SET DEFAULT 'open';

