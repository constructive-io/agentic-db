-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/completed_at/alterations/alt0000003074
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/completed_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/habit_id/alterations/alt0000003073


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  ALTER COLUMN completed_at SET NOT NULL;

