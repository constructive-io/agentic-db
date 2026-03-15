-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/current_streak/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/target_count/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habits 
  ADD COLUMN current_streak int;

