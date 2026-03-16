-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/entity_id/alterations/alt0000002036
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/logs_path/column
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/entity_id/column


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ALTER COLUMN entity_id SET NOT NULL;

