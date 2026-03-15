-- Revert: schemas/agent_db_app_public/tables/event_venues/columns/event_id/alterations/alt0000001030


ALTER TABLE agent_db_app_public.event_venues 
  ALTER COLUMN event_id DROP NOT NULL;


