-- Revert: schemas/agent_db_app_public/tables/user_settings/columns/id/alterations/alt0000001444


ALTER TABLE agent_db_app_public.user_settings 
  ALTER COLUMN id DROP NOT NULL;


