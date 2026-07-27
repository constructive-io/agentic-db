-- Deploy: schemas/agentic_db_app_public/tables/places/columns/embedding_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table


ALTER TABLE agentic_db_app_public.places 
  ADD COLUMN embedding_text text;

