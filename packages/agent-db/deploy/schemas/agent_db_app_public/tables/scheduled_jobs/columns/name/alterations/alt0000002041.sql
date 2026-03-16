-- Deploy: schemas/agent_db_app_public/tables/scheduled_jobs/columns/name/alterations/alt0000002041
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/table
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/name/column
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/updated_at/alterations/alt0000002040


ALTER TABLE "agent_db_app_public".scheduled_jobs 
  ALTER COLUMN name SET NOT NULL;

