-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/target_count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/frequency/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habits 
  ADD COLUMN target_count int;

