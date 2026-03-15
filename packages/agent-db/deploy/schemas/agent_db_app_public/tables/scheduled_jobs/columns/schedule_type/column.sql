-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/schedule_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/name/alterations/alt0000004378


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ADD COLUMN schedule_type text;

