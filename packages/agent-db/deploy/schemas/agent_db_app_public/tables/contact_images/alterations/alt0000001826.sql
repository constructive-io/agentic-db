-- Deploy: schemas/agent_db_app_public/tables/contact_images/alterations/alt0000001826
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_images/table
-- requires: schemas/agent_db_app_public/tables/venues/constraints/venues_main_image_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_images 
  DISABLE ROW LEVEL SECURITY;

