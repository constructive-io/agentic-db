-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/organizer_contact_id/column


ALTER TABLE "agentic_db_app_public".calendar_events 
  DROP COLUMN organizer_contact_id RESTRICT;


