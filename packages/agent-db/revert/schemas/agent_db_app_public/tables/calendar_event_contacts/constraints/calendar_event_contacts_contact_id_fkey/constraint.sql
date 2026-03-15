-- Revert: schemas/agent_db_app_public/tables/calendar_event_contacts/constraints/calendar_event_contacts_contact_id_fkey/constraint


ALTER TABLE agent_db_app_public.calendar_event_contacts 
  DROP CONSTRAINT calendar_event_contacts_contact_id_fkey;


