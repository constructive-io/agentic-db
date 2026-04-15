-- Deploy: schemas/agentic_db_app_public/tables/calendar_attendees/alterations/alt0000013530
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE agentic_db_app_public.calendar_attendees 
  DISABLE ROW LEVEL SECURITY;

