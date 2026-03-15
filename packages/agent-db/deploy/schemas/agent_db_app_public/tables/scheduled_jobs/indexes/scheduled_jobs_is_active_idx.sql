-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/indexes/scheduled_jobs_is_active_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/processes/indexes/processes_status_idx
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/is_active/column


CREATE INDEX scheduled_jobs_is_active_idx ON agent_db_app_public.scheduled_jobs USING BTREE ( is_active );

