-- Deploy: schemas/agent_db_app_public/tables/rules/constraints/rules_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/rules/table
-- requires: schemas/agent_db_app_public/tables/tasks/columns/embedding/column


ALTER TABLE agent_db_app_public.rules 
  ADD CONSTRAINT rules_pkey PRIMARY KEY (id);

