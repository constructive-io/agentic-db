-- Deploy: schemas/agentic_db_app_public/tables/venue_images/columns/image_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_images/table


ALTER TABLE "agentic_db_app_public".venue_images 
  ADD COLUMN image_id uuid;

