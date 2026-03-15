-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/last_result/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/run_count/alterations/alt0000004383


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ADD COLUMN last_result jsonb;

