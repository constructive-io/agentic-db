-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/message/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/command/alterations/alt0000001210


ALTER TABLE agent_db_app_public.scheduled_jobs 
  ADD COLUMN message text;

