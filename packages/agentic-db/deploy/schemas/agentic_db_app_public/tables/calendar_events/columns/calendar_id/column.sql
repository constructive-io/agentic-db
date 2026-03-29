-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/columns/calendar_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE agentic_db_app_public.calendar_events 
  ADD COLUMN calendar_id uuid;

