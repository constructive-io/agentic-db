-- Deploy: schemas/agentic_db_app_public/tables/venue_chunks/constraints/venue_chunks_venue_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venue_chunks/table
-- requires: schemas/agentic_db_app_public/tables/event_chunks/indexes/event_chunks_event_id_idx


ALTER TABLE agentic_db_app_public.venue_chunks 
  ADD CONSTRAINT venue_chunks_venue_id_fkey 
    FOREIGN KEY(venue_id) 
    REFERENCES agentic_db_app_public.venues (id) 
    ON DELETE CASCADE;

