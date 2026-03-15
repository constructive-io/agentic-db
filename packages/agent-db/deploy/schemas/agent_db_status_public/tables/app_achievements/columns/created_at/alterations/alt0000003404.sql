-- Deploy: schemas/agent_db_status_public/tables/app_achievements/columns/created_at/alterations/alt0000003404
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table
-- requires: schemas/agent_db_status_public/tables/app_achievements/columns/created_at/column


ALTER TABLE "agent_db_status_public".app_achievements 
  ALTER COLUMN created_at SET DEFAULT now();

