-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/parent_agent_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/columns/updated_at/alterations/alt0000001262


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_spawns 
  ADD COLUMN parent_agent_id uuid;

