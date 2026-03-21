-- Deploy: schemas/agentic_db_app_public/tables/notes/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/main_image_id/column


ALTER TABLE agentic_db_app_public.notes 
  ADD COLUMN id uuid;

