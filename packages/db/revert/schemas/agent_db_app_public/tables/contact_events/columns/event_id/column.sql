-- Revert: schemas/agent_db_app_public/tables/contact_events/columns/event_id/column


ALTER TABLE "agent_db_app_public".contact_events 
  DROP COLUMN event_id RESTRICT;


