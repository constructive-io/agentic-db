-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/last_accessed_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/active_count/alterations/alt0000000916


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notes 
  ADD COLUMN last_accessed_at timestamptz;

