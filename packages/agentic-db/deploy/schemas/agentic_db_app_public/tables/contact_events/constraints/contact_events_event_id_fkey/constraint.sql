-- Deploy: schemas/agentic_db_app_public/tables/contact_events/constraints/contact_events_event_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/contact_events/table


ALTER TABLE agentic_db_app_public.contact_events 
  ADD CONSTRAINT contact_events_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES agentic_db_app_public.events (id) 
    ON DELETE CASCADE;

