-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/habit_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habit_logs/columns/updated_at/alterations/alt0000003072


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habit_logs 
  ADD COLUMN habit_id uuid;

