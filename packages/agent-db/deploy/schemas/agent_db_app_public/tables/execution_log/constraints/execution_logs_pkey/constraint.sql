-- Deploy: schemas/agent_db_app_public/tables/execution_log/constraints/execution_logs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/execution_log/table
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/embedding/column


ALTER TABLE "agent_db_app_public".execution_log 
  ADD CONSTRAINT execution_logs_pkey PRIMARY KEY (id);

