-- Revert: schemas/agentic_db_app_public/tables/user_settings/columns/value/column


ALTER TABLE "agentic_db_app_public".user_settings 
  DROP COLUMN value RESTRICT;


