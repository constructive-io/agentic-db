-- Deploy: schemas/agentic_db_app_public/tables/event_venues/constraints/event_venues_event_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/event_venues/table


ALTER TABLE "agentic_db_app_public".event_venues 
  ADD CONSTRAINT event_venues_event_id_fkey 
    FOREIGN KEY(event_id) 
    REFERENCES "agentic_db_app_public".events (id) 
    ON DELETE CASCADE;

