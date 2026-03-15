-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/columns/config/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agents 
  ADD COLUMN status text;

