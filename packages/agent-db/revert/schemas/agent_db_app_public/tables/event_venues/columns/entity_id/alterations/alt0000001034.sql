-- Revert: schemas/agent_db_app_public/tables/event_venues/columns/entity_id/alterations/alt0000001034


ALTER TABLE agent_db_app_public.event_venues 
  ALTER COLUMN entity_id DROP NOT NULL;


