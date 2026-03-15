-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/distance/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/duration_minutes/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habit_logs 
  ADD COLUMN distance numeric;

