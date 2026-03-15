-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/habit_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/updated_at/alterations/alt0000001511


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
  ADD COLUMN habit_id uuid;

