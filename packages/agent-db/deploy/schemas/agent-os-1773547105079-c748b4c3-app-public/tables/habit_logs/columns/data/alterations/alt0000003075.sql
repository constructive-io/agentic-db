-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/data/alterations/alt0000003075
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/data/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/calories/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
    ALTER COLUMN data SET DEFAULT '{}';

