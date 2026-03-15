-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/notes/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/habit_logs/columns/data/alterations/alt0000003123


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".habit_logs 
  ADD COLUMN notes text;

