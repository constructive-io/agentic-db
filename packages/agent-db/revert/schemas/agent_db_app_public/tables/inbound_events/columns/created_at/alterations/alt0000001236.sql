-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/created_at/alterations/alt0000001236


ALTER TABLE agent_db_app_public.inbound_events 
  ALTER COLUMN created_at DROP NOT NULL;


