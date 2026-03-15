-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/completed_at/alterations/alt0000001513
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/completed_at/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/habit_id/alterations/alt0000001512


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
  ALTER COLUMN completed_at SET NOT NULL;

