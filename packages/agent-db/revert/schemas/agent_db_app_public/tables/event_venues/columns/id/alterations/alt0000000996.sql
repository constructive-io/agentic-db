-- Revert: schemas/agent_db_app_public/tables/event_venues/columns/id/alterations/alt0000000996


ALTER TABLE agent_db_app_public.event_venues 
  ALTER COLUMN id DROP NOT NULL;


