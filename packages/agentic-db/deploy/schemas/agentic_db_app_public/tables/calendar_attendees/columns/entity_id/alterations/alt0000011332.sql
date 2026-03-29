-- Deploy: schemas/agentic_db_app_public/tables/calendar_attendees/columns/entity_id/alterations/alt0000011332
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/columns/entity_id/column


ALTER TABLE agentic_db_app_public.calendar_attendees 
  ALTER COLUMN entity_id SET NOT NULL;

