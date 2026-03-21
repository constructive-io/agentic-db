-- Revert: schemas/agentic_db_app_public/tables/contact_events/columns/event_id/column


ALTER TABLE agentic_db_app_public.contact_events 
  DROP COLUMN event_id RESTRICT;


