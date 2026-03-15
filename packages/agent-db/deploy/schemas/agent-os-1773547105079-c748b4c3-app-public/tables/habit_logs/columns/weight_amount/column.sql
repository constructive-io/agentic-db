-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/weight_amount/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/sets/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  ADD COLUMN weight_amount numeric;

