-- Revert: schemas/agentic_db_app_public/tables/contact_events/columns/event_id/alterations/alt0000003305


ALTER TABLE agentic_db_app_public.contact_events 
  ALTER COLUMN event_id DROP NOT NULL;


