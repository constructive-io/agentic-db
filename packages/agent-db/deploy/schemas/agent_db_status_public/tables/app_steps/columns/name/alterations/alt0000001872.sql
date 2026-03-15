-- Deploy: schemas/agent_db_status_public/tables/app_steps/columns/name/alterations/alt0000001872
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table
-- requires: schemas/agent_db_status_public/tables/app_steps/columns/name/column


ALTER TABLE "agent_db_status_public".app_steps 
  ALTER COLUMN name SET NOT NULL;

