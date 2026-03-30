-- Deploy: schemas/agentic_db_app_public/tables/calendars/columns/created_at/alterations/alt0000001875
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/calendars/columns/created_at/column



ALTER TABLE "agentic_db_app_public".calendars 
    ALTER COLUMN created_at SET DEFAULT now();

