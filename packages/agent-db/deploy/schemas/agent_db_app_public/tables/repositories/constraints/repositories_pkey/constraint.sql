-- Deploy: schemas/agent_db_app_public/tables/repositories/constraints/repositories_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE agent_db_app_public.repositories 
  ADD CONSTRAINT repositories_pkey PRIMARY KEY (id);

