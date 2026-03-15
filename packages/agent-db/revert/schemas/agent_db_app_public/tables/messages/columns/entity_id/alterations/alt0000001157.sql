-- Revert: schemas/agent_db_app_public/tables/messages/columns/entity_id/alterations/alt0000001157


ALTER TABLE agent_db_app_public.messages 
  ALTER COLUMN entity_id DROP NOT NULL;


