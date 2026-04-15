-- Revert: schemas/agentic_db_app_public/tables/calendar_attendees/constraints/calendar_attendees_contact_id_fkey/constraint


ALTER TABLE agentic_db_app_public.calendar_attendees 
  DROP CONSTRAINT calendar_attendees_contact_id_fkey;


