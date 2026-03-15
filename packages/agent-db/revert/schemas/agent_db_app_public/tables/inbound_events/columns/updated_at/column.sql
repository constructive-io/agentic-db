-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/updated_at/column


ALTER TABLE "agent_db_app_public".inbound_events 
  DROP COLUMN updated_at RESTRICT;


