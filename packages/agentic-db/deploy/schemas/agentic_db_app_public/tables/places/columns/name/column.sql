-- Deploy: schemas/agentic_db_app_public/tables/places/columns/name/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/updated_at/alterations/alt0000006224


ALTER TABLE agentic_db_app_public.places 
  ADD COLUMN name text;

