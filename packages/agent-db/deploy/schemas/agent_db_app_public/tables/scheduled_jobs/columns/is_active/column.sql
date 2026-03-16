-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/is_active/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/session_id/column


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ADD COLUMN is_active bool;

