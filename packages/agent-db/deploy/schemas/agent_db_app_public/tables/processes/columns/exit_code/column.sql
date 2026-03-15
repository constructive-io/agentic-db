-- Deploy: schemas/agent_db_app_public/tables/processes/columns/exit_code/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/status/alterations/alt0000004369


ALTER TABLE "agent_db_app_public".processes 
  ADD COLUMN exit_code int;

