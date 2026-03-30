-- Deploy: schemas/agentic_db_app_public/tables/calendars/columns/id/alterations/alt0000001849
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/calendars/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx



ALTER TABLE "agentic_db_app_public".calendars 
    ALTER COLUMN id SET DEFAULT uuidv7();

