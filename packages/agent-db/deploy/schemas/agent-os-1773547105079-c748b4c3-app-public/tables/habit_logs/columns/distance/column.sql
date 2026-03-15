-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/distance/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/duration_minutes/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  ADD COLUMN distance numeric;

