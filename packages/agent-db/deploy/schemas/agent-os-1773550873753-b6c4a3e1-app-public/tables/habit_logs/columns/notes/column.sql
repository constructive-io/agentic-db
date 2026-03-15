-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/notes/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/data/alterations/alt0000001514


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habit_logs 
  ADD COLUMN notes text;

