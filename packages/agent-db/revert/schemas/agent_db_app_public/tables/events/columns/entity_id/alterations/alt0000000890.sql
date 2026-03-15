-- Revert: schemas/agent_db_app_public/tables/events/columns/entity_id/alterations/alt0000000890


ALTER TABLE agent_db_app_public.events 
  ALTER COLUMN entity_id DROP NOT NULL;


