-- Revert: schemas/agent_db_app_public/tables/user_settings/columns/entity_id/alterations/alt0000001446


ALTER TABLE agent_db_app_public.user_settings 
  ALTER COLUMN entity_id DROP NOT NULL;


