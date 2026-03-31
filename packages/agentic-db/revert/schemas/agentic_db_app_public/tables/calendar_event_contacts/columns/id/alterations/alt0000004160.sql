-- Revert: schemas/agentic_db_app_public/tables/calendar_event_contacts/columns/id/alterations/alt0000004160


ALTER TABLE agentic_db_app_public.calendar_event_contacts 
  ALTER COLUMN id DROP NOT NULL;


