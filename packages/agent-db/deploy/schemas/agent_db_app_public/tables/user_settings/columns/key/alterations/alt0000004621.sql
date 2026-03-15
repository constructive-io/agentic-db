-- Deploy: schemas/agent_db_app_public/tables/user_settings/columns/key/alterations/alt0000004621
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/user_settings/table
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/key/column
-- requires: schemas/agent_db_app_public/tables/user_settings/columns/updated_at/alterations/alt0000004620


ALTER TABLE "agent_db_app_public".user_settings 
  ALTER COLUMN key SET NOT NULL;

