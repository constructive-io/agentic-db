-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/id/alterations/alt0000003067
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/tags/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/id/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

