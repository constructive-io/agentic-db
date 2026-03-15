-- Revert: schemas/agent_db_app_public/tables/user_settings/columns/updated_at/column


ALTER TABLE agent_db_app_public.user_settings 
  DROP COLUMN updated_at RESTRICT;


