-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/schedule_type/alterations/alt0000001209
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/schedule_type/column
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/name/alterations/alt0000001208


ALTER TABLE agent_db_app_public.scheduled_jobs 
  ALTER COLUMN schedule_type SET NOT NULL;

