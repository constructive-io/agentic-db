-- Deploy: schemas/agentic_db_app_public/tables/contact_images/columns/image_id/alterations/alt0000001105
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_images/table
-- requires: schemas/agentic_db_app_public/tables/contact_images/columns/image_id/column
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_main_image_id_idx


ALTER TABLE "agentic_db_app_public".contact_images 
  ALTER COLUMN image_id SET NOT NULL;

