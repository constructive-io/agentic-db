-- Deploy: schemas/agent_db_app_public/tables/contact_images/columns/id/alterations/alt0000000987
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_images/table
-- requires: schemas/agent_db_app_public/tables/contact_images/columns/id/column
-- requires: schemas/agent_db_app_public/tables/venues/constraints/venues_main_image_id_fkey/constraint



ALTER TABLE agent_db_app_public.contact_images 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

