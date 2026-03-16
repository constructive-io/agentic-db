-- Revert: schemas/agent_db_app_public/tables/user_settings/columns/category/column


ALTER TABLE "agent_db_app_public".user_settings 
  DROP COLUMN category RESTRICT;


