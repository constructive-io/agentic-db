-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/last_active_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/columns/focus/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".agents 
  ADD COLUMN last_active_at timestamptz;

