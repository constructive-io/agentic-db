-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/due_date/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".projects 
  ADD COLUMN tags citext[];

