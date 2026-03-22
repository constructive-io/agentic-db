-- Deploy: schemas/agentic_db_app_public/tables/contact_images/constraints/contact_images_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/contact_images/table
-- requires: schemas/agentic_db_app_public/tables/venues/indexes/venues_main_image_id_idx


ALTER TABLE "agentic_db_app_public".contact_images 
  ADD CONSTRAINT contact_images_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

