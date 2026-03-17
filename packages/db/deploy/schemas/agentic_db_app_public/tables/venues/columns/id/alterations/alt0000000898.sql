-- Deploy: schemas/agentic_db_app_public/tables/venues/columns/id/alterations/alt0000000898
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/venues/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/events/columns/main_image_id/column



ALTER TABLE "agentic_db_app_public".venues 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

