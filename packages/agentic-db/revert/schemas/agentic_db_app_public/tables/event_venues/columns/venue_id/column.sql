-- Revert: schemas/agentic_db_app_public/tables/event_venues/columns/venue_id/column


ALTER TABLE "agentic_db_app_public".event_venues 
  DROP COLUMN venue_id RESTRICT;


