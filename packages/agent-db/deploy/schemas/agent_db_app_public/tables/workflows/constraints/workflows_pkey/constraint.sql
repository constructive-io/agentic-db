-- Deploy: schemas/agent_db_app_public/tables/workflows/constraints/workflows_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/embedding/column


ALTER TABLE agent_db_app_public.workflows 
  ADD CONSTRAINT workflows_pkey PRIMARY KEY (id);

