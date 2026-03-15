-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/priority/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/status/alterations/alt0000001050


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
  ADD COLUMN priority int;

