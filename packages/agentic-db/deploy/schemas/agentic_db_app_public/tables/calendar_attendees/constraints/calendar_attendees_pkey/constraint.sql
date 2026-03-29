-- Deploy: schemas/agentic_db_app_public/tables/calendar_attendees/constraints/calendar_attendees_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/table
-- requires: schemas/agentic_db_app_public/tables/trips_chunks/indexes/trips_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.calendar_attendees 
  ADD CONSTRAINT calendar_attendees_pkey PRIMARY KEY (id);

