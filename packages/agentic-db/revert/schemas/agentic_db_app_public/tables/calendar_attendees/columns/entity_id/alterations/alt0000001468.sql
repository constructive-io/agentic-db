-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/columns/entity_id/alterations/alt0000001468


ALTER TABLE "agentic_db_app_public".calendar_attendees 
  ALTER COLUMN entity_id DROP NOT NULL;


