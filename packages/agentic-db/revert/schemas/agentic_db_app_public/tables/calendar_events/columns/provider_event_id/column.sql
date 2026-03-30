-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/provider_event_id/column


ALTER TABLE "agentic_db_app_public".calendar_events 
  DROP COLUMN provider_event_id RESTRICT;


