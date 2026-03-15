-- Deploy: schemas/agent_db_app_public/tables/contacts/constraints/contacts_main_image_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/venue_links/columns/embedding/column


ALTER TABLE agent_db_app_public.contacts 
  ADD CONSTRAINT contacts_main_image_id_fkey 
    FOREIGN KEY(main_image_id) 
    REFERENCES agent_db_app_public.images (id) 
    ON DELETE SET NULL;

