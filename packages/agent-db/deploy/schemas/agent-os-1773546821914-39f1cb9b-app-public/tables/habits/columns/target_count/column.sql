-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/target_count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/habits/columns/frequency/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".habits 
  ADD COLUMN target_count int;

