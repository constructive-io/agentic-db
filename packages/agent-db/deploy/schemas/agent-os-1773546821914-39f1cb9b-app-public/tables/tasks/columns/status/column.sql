-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/description/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  ADD COLUMN status text;

