-- Deploy: schemas/agent_db_app_public/tables/templates/constraints/templates_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/embedding/column


ALTER TABLE agent_db_app_public.templates 
  ADD CONSTRAINT templates_pkey PRIMARY KEY (id);

