-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/constraints/scheduled_jobs_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/logs_path/column


ALTER TABLE agent_db_app_public.scheduled_jobs 
  ADD CONSTRAINT scheduled_jobs_pkey PRIMARY KEY (id);

