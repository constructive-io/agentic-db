-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/columns/started_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/processes/columns/command/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".processes 
  ADD COLUMN started_at timestamptz;

