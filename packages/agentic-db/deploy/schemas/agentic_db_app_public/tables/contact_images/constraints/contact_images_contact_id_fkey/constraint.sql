-- Deploy: schemas/agentic_db_app_public/tables/contact_images/constraints/contact_images_contact_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contacts/table
-- requires: schemas/agentic_db_app_public/tables/contact_images/table
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_main_image_id_idx


ALTER TABLE "agentic_db_app_public".contact_images 
  ADD CONSTRAINT contact_images_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES "agentic_db_app_public".contacts (id) 
    ON DELETE CASCADE;

