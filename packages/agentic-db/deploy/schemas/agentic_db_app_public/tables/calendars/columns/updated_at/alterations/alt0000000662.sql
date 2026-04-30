-- Deploy: schemas/agentic_db_app_public/tables/calendars/columns/updated_at/alterations/alt0000000662
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/calendars/columns/updated_at/column


COMMENT ON COLUMN agentic_db_app_public.calendars.updated_at IS 'Timestamp when this record was last updated';

