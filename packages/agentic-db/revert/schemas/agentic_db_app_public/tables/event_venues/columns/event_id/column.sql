-- Revert: schemas/agentic_db_app_public/tables/event_venues/columns/event_id/column


ALTER TABLE agentic_db_app_public.event_venues 
  DROP COLUMN event_id RESTRICT;


