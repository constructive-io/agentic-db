-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/constraints/habit_logs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/tags/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  ADD CONSTRAINT habit_logs_pkey PRIMARY KEY (id);

