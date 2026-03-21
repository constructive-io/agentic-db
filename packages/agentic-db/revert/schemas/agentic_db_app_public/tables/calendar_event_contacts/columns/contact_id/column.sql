-- Revert: schemas/agentic_db_app_public/tables/calendar_event_contacts/columns/contact_id/column


ALTER TABLE agentic_db_app_public.calendar_event_contacts 
  DROP COLUMN contact_id RESTRICT;


