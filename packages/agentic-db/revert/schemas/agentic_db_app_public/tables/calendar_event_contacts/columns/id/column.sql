-- Revert: schemas/agentic_db_app_public/tables/calendar_event_contacts/columns/id/column


ALTER TABLE agentic_db_app_public.calendar_event_contacts 
  DROP COLUMN id RESTRICT;


