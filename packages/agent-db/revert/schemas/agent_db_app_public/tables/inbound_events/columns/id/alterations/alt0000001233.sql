-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/id/alterations/alt0000001233


ALTER TABLE agent_db_app_public.inbound_events 
  ALTER COLUMN id DROP NOT NULL;


