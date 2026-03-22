-- Revert: schemas/agentic_db_app_public/tables/contact_events/constraints/contact_events_contact_id_fkey/constraint


ALTER TABLE agentic_db_app_public.contact_events 
  DROP CONSTRAINT contact_events_contact_id_fkey;


