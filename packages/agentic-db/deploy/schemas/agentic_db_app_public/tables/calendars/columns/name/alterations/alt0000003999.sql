-- Deploy: schemas/agentic_db_app_public/tables/calendars/columns/name/alterations/alt0000003999
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/calendars/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE agentic_db_app_public.calendars 
  ALTER COLUMN name SET NOT NULL;

