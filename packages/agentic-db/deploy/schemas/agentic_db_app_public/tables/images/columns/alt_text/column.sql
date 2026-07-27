-- Deploy: schemas/agentic_db_app_public/tables/images/columns/alt_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table


ALTER TABLE agentic_db_app_public.images 
  ADD COLUMN alt_text text;

