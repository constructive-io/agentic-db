-- Revert: schemas/agentic_db_app_public/tables/user_settings/columns/key/column


ALTER TABLE agentic_db_app_public.user_settings 
  DROP COLUMN key RESTRICT;


