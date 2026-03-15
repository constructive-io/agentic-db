-- Revert: schemas/agent_db_app_public/tables/user_settings/columns/key/alterations/alt0000004621


ALTER TABLE "agent_db_app_public".user_settings 
  ALTER COLUMN key DROP NOT NULL;


