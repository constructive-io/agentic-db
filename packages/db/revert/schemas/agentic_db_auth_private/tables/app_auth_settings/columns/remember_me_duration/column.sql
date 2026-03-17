-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/remember_me_duration/column


ALTER TABLE "agentic_db_auth_private".app_auth_settings 
  DROP COLUMN remember_me_duration RESTRICT;


