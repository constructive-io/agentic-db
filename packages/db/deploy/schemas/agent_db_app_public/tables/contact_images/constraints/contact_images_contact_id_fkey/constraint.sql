-- Deploy: schemas/agent_db_app_public/tables/contact_images/constraints/contact_images_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/contact_images/table
-- requires: schemas/agent_db_app_public/tables/venues/constraints/venues_main_image_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_images 
  ADD CONSTRAINT contact_images_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agent_db_app_public".contacts (id) 
    ON DELETE CASCADE;

