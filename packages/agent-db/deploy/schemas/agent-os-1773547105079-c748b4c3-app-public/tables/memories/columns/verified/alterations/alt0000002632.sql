-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/verified/alterations/alt0000002632
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/verified/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/importance/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".memories 
    ALTER COLUMN verified SET DEFAULT false;

