-- Deploy: schemas/agentic_db_app_public/tables/agent_spawns/constraints/agent_spawns_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/table
-- requires: schemas/agentic_db_app_public/tables/workflow_runs/columns/error/column


ALTER TABLE "agentic_db_app_public".agent_spawns 
  ADD CONSTRAINT agent_spawns_pkey PRIMARY KEY (id);

