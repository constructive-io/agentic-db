-- Deploy: schemas/agent_db_app_public/tables/contact_images/columns/image_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_images/table
-- requires: schemas/agent_db_app_public/tables/venues/constraints/venues_main_image_id_fkey/constraint


ALTER TABLE agent_db_app_public.contact_images 
  ADD COLUMN image_id uuid;

