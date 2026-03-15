-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/weight_unit/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/habit_logs/columns/weight_amount/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".habit_logs 
  ADD COLUMN weight_unit text;

