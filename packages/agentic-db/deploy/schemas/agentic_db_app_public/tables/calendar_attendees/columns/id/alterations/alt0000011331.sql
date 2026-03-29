-- Deploy: schemas/agentic_db_app_public/tables/calendar_attendees/columns/id/alterations/alt0000011331
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/columns/id/column



ALTER TABLE agentic_db_app_public.calendar_attendees 
    ALTER COLUMN id SET DEFAULT uuidv7();

