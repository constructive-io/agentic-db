-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/entity_id/alterations/alt0000002469


ALTER TABLE "agentic_db_app_public".calendar_events 
  ALTER COLUMN entity_id DROP NOT NULL;


