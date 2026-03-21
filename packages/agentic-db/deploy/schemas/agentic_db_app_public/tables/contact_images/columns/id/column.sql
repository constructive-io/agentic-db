-- Deploy: schemas/agentic_db_app_public/tables/contact_images/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_images/table
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_main_image_id_idx


ALTER TABLE "agentic_db_app_public".contact_images 
  ADD COLUMN id uuid;

