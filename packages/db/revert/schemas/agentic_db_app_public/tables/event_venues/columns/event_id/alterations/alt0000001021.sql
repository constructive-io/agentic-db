-- Revert: schemas/agentic_db_app_public/tables/event_venues/columns/event_id/alterations/alt0000001021


ALTER TABLE "agentic_db_app_public".event_venues 
  ALTER COLUMN event_id DROP NOT NULL;


