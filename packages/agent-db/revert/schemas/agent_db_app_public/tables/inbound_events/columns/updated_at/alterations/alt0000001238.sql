-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/updated_at/alterations/alt0000001238


ALTER TABLE agent_db_app_public.inbound_events 
  ALTER COLUMN updated_at DROP NOT NULL;


