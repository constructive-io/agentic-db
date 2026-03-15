-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/started_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/max_iterations/alterations/alt0000001266


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_spawns 
  ADD COLUMN started_at timestamptz;

