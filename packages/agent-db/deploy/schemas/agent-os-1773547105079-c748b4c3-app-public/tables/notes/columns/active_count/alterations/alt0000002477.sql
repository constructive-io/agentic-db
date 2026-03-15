-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/active_count/alterations/alt0000002477
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/overview/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/notes/columns/active_count/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".notes 
    ALTER COLUMN active_count SET DEFAULT 0;

