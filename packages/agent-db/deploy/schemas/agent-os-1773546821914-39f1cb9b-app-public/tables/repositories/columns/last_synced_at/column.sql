-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/last_synced_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/default_branch/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".repositories 
  ADD COLUMN last_synced_at timestamptz;

