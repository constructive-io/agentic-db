-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/constraints/agent_spawns_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_spawns/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/workflow_runs/columns/error/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_spawns 
  ADD CONSTRAINT agent_spawns_pkey PRIMARY KEY (id);

