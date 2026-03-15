-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/alterations/alt0000003065
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/tags/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  DISABLE ROW LEVEL SECURITY;

