-- Deploy: schemas/agent_db_app_public/tables/user_settings/columns/category/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/user_settings/table
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/value/column


ALTER TABLE "agent_db_app_public".user_settings 
  ADD COLUMN category text;

