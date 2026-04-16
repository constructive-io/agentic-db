-- Deploy: schemas/agentic_db_app_public/tables/calendar_events/columns/calendar_id/alterations/alt0000015801
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_events/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_events/columns/calendar_id/column


ALTER TABLE agentic_db_app_public.calendar_events 
  ALTER COLUMN calendar_id SET NOT NULL;

