-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/payload/column


ALTER TABLE "agent_db_app_public".inbound_events 
  DROP COLUMN payload RESTRICT;


