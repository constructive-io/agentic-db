-- Deploy: schemas/agentic_db_app_public/tables/calendar_events_chunks/constraints/calendar_events_chunks_pkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events_chunks/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE agentic_db_app_public.calendar_events_chunks 
  ADD CONSTRAINT calendar_events_chunks_pkey PRIMARY KEY (id);

