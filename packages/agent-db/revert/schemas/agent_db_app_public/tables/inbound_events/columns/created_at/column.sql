-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/created_at/column


ALTER TABLE "agent_db_app_public".inbound_events 
  DROP COLUMN created_at RESTRICT;


