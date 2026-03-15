-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/last_active_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/focus/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agents 
  ADD COLUMN last_active_at timestamptz;

