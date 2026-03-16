-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/updated_at/alterations/alt0000002040


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ADD COLUMN name text;

