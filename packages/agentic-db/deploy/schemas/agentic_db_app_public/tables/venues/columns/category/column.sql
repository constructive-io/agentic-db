-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/category/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/city/column


ALTER TABLE agentic_db_app_public.venues 
  ADD COLUMN category text;

