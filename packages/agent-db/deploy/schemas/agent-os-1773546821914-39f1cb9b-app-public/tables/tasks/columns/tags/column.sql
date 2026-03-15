-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/dependencies/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  ADD COLUMN tags citext[];

