-- Revert: schemas/agentic_db_auth_private/tables/app_auth_settings/columns/id/column


ALTER TABLE "agentic_db_auth_private".app_auth_settings 
  DROP COLUMN id RESTRICT;


