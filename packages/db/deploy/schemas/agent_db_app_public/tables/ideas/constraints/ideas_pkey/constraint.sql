-- Deploy: schemas/agent_db_app_public/tables/ideas/constraints/ideas_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint


ALTER TABLE "agent_db_app_public".ideas 
  ADD CONSTRAINT ideas_pkey PRIMARY KEY (id);

