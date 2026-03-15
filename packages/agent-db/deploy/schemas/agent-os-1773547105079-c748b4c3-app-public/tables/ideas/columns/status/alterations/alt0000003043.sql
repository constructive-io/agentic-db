-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/status/alterations/alt0000003043
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/source/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/status/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".ideas 
    ALTER COLUMN status SET DEFAULT 'captured';

