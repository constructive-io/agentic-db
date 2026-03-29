-- Deploy: schemas/agentic_db_app_public/tables/calendars/alterations/alt0000001442
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE "agentic_db_app_public".calendars 
  DISABLE ROW LEVEL SECURITY;

