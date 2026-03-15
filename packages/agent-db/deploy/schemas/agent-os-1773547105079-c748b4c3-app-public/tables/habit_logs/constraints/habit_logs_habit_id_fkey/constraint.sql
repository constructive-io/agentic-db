-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/constraints/habit_logs_habit_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/columns/embedding/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  ADD CONSTRAINT habit_logs_habit_id_fkey 
    FOREIGN KEY(habit_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".habits (id) 
    ON DELETE CASCADE;

