-- Revert: schemas/agentic_db_app_public/tables/contact_events/constraints/contact_events_pkey/constraint


ALTER TABLE agentic_db_app_public.contact_events 
  DROP CONSTRAINT contact_events_pkey;


