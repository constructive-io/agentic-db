-- Deploy: schemas/agentic_db_app_public/tables/projects/constraints/projects_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/projects/table
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/constraints/agent_spawns_agent_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".projects 
  ADD CONSTRAINT projects_pkey PRIMARY KEY (id);

