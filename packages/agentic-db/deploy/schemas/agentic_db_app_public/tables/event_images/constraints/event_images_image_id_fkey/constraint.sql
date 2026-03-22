-- Deploy: schemas/agentic_db_app_public/tables/event_images/constraints/event_images_image_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/event_images/table
-- requires: schemas/agentic_db_app_public/tables/company_images/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.event_images 
  ADD CONSTRAINT event_images_image_id_fkey 
    FOREIGN KEY(image_id) 
    REFERENCES agentic_db_app_public.images (id) 
    ON DELETE CASCADE;

