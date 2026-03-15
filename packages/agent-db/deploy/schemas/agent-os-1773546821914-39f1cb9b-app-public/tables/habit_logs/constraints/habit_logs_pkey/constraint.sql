-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/constraints/habit_logs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habit_logs/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/tags/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habit_logs 
  ADD CONSTRAINT habit_logs_pkey PRIMARY KEY (id);

