-- Deploy: schemas/agentic_db_app_public/tables/events_chunks/constraints/events_chunks_events_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events_chunks/table


ALTER TABLE "agentic_db_app_public".events_chunks 
  ADD CONSTRAINT events_chunks_events_id_fkey 
    FOREIGN KEY(events_id) 
    REFERENCES "agentic_db_app_public".events (id) 
    ON DELETE CASCADE;

