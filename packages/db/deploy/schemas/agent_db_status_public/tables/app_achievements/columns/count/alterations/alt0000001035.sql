-- Deploy: schemas/agent_db_status_public/tables/app_achievements/columns/count/alterations/alt0000001035
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table
-- requires: schemas/agent_db_status_public/tables/app_achievements/columns/count/column


ALTER TABLE "agent_db_status_public".app_achievements 
  ALTER COLUMN count SET NOT NULL;

