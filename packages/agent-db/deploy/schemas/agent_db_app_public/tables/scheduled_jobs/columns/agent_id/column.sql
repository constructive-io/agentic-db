-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/agent_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/message/column


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ADD COLUMN agent_id uuid;

