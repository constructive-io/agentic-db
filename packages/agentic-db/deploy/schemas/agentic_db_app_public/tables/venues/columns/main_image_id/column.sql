-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/main_image_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.venues 
  ADD COLUMN main_image_id uuid;

