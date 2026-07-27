-- Deploy: schemas/agentic_db_app_public/tables/venue_images/constraints/venue_images_image_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/venue_images/table


ALTER TABLE agentic_db_app_public.venue_images 
  ADD CONSTRAINT venue_images_image_id_fkey 
    FOREIGN KEY(image_id) 
    REFERENCES agentic_db_app_public.images (id) 
    ON DELETE CASCADE;

