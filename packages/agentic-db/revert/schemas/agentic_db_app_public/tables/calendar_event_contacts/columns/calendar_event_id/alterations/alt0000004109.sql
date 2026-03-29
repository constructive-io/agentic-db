-- Revert: schemas/agentic_db_app_public/tables/calendar_event_contacts/columns/calendar_event_id/alterations/alt0000004109


ALTER TABLE agentic_db_app_public.calendar_event_contacts 
  ALTER COLUMN calendar_event_id DROP NOT NULL;


