-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/entity_id/alterations/alt0000002938


ALTER TABLE "agent_db_app_public".inbound_events 
  ALTER COLUMN entity_id DROP NOT NULL;


