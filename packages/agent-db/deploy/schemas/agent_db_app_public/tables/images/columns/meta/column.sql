-- Deploy: schemas/agent_db_app_public/tables/images/columns/meta/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/images/columns/url/alterations/alt0000004075


ALTER TABLE "agent_db_app_public".images 
  ADD COLUMN meta jsonb;

