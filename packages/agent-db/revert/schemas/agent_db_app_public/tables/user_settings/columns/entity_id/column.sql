-- Revert: schemas/agent_db_app_public/tables/user_settings/columns/entity_id/column


ALTER TABLE agent_db_app_public.user_settings 
  DROP COLUMN entity_id RESTRICT;


