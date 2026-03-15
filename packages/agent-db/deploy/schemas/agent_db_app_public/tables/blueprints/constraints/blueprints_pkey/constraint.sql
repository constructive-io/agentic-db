-- Deploy: schemas/agent_db_app_public/tables/blueprints/constraints/blueprints_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/embedding/column


ALTER TABLE agent_db_app_public.blueprints 
  ADD CONSTRAINT blueprints_pkey PRIMARY KEY (id);

