-- Deploy: schemas/agentic_db_app_public/tables/venue_images/columns/id/alterations/alt0000001166
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venue_images/table
-- requires: schemas/agentic_db_app_public/tables/venue_images/columns/id/column


ALTER TABLE "agentic_db_app_public".venue_images 
  ALTER COLUMN id SET NOT NULL;

