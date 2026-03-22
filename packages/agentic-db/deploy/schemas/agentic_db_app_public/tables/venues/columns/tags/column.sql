-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/notes/column


ALTER TABLE agentic_db_app_public.venues 
  ADD COLUMN tags citext[];

