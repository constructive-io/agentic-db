-- Revert: schemas/agent_db_app_public/tables/event_venues/columns/id/alterations/alt0000001032


ALTER TABLE agent_db_app_public.event_venues 
  ALTER COLUMN id DROP NOT NULL;


