-- Deploy: schemas/agent_db_status_public/tables/app_achievements/columns/name/alterations/alt0000001885
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table
-- requires: schemas/agent_db_status_public/tables/app_achievements/columns/name/column


ALTER TABLE "agent_db_status_public".app_achievements 
  ALTER COLUMN name SET NOT NULL;

