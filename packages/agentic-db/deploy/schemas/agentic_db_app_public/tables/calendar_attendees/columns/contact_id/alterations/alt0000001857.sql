-- Deploy: schemas/agentic_db_app_public/tables/calendar_attendees/columns/contact_id/alterations/alt0000001857
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/table
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/columns/contact_id/column


ALTER TABLE "agentic_db_app_public".calendar_attendees 
  ALTER COLUMN contact_id SET NOT NULL;

