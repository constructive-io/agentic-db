-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/repository_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/file_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chunks 
  ADD COLUMN repository_id uuid;

