-- Deploy: schemas/agentic_db_app_public/tables/calendar_attendees/columns/updated_at/alterations/alt0000000686
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/calendar_attendees/columns/updated_at/column


COMMENT ON COLUMN agentic_db_app_public.calendar_attendees.updated_at IS 'Timestamp when this record was last updated';

