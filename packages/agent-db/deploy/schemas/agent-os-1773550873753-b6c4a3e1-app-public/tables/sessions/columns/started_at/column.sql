-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/columns/started_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/columns/agent_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".sessions 
  ADD COLUMN started_at timestamptz;

