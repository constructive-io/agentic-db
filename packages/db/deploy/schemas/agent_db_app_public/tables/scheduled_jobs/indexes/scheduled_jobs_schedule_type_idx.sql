-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/indexes/scheduled_jobs_schedule_type_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/schedule_type/column
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/indexes/scheduled_jobs_next_run_at_idx


CREATE INDEX scheduled_jobs_schedule_type_idx ON "agent_db_app_public".scheduled_jobs USING BTREE ( schedule_type );

