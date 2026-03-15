-- Revert: schemas/agent_db_app_public/tables/user_settings/columns/created_at/alterations/alt0000001447


ALTER TABLE agent_db_app_public.user_settings 
  ALTER COLUMN created_at DROP NOT NULL;


