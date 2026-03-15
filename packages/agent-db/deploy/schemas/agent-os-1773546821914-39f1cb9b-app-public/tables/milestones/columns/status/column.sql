-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/due_date/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".milestones 
  ADD COLUMN status text;

