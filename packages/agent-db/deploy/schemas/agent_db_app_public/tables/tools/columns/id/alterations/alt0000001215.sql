-- Deploy: schemas/agent_db_app_public/tables/tools/columns/id/alterations/alt0000001215
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/id/column
-- requires: schemas/agent_db_app_public/tables/scheduled_jobs/columns/last_result/column


ALTER TABLE agent_db_app_public.tools 
  ALTER COLUMN id SET NOT NULL;

