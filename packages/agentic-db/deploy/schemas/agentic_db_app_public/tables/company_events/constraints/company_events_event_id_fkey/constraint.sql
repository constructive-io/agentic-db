-- Deploy: schemas/agentic_db_app_public/tables/company_events/constraints/company_events_event_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/company_events/table


ALTER TABLE "agentic_db_app_public".company_events 
  ADD CONSTRAINT company_events_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES "agentic_db_app_public".events (id) 
    ON DELETE CASCADE;

