-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/event_type/alterations/alt0000002944


ALTER TABLE "agent_db_app_public".inbound_events 
  ALTER COLUMN event_type DROP NOT NULL;


