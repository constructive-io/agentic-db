-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/habit_id/alterations/alt0000001512
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/habit_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/updated_at/alterations/alt0000001511


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habit_logs 
  ALTER COLUMN habit_id SET NOT NULL;

