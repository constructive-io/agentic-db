-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/session_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/child_agent_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_spawns 
  ADD COLUMN session_id uuid;

