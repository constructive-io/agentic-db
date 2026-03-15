-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/constraints/agent_spawns_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/error/column


ALTER TABLE agent_db_app_public.agent_spawns 
  ADD CONSTRAINT agent_spawns_pkey PRIMARY KEY (id);

