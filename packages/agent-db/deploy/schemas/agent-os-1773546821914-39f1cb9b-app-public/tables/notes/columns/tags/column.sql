-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/last_accessed_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notes 
  ADD COLUMN tags citext[];

