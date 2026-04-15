-- Deploy: schemas/agentic_db_app_public/tables/venue_images/constraints/venue_images_venue_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venue_images/table


ALTER TABLE "agentic_db_app_public".venue_images 
  ADD CONSTRAINT venue_images_venue_id_fkey 
    FOREIGN KEY(venue_id) 
    REFERENCES "agentic_db_app_public".venues (id) 
    ON DELETE CASCADE;

