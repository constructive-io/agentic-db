-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/weight_amount/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/columns/sets/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
  ADD COLUMN weight_amount numeric;

