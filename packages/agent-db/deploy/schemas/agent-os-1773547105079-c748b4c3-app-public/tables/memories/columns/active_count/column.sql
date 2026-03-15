-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/active_count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/memories/columns/overview/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".memories 
  ADD COLUMN active_count int;

