-- Deploy: schemas/agent_db_status_public/tables/app_steps/constraints/app_steps_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table


ALTER TABLE "agent_db_status_public".app_steps 
  ADD CONSTRAINT app_steps_pkey PRIMARY KEY (id);

