-- Deploy: schemas/agentic_db_app_public/tables/calendars/columns/entity_id/alterations/alt0000011297
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/calendars/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE agentic_db_app_public.calendars 
  ALTER COLUMN entity_id SET NOT NULL;

