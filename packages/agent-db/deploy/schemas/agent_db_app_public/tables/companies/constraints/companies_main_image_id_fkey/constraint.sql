-- Deploy: schemas/agent_db_app_public/tables/companies/constraints/companies_main_image_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/contacts/constraints/contacts_main_image_id_fkey/constraint


ALTER TABLE agent_db_app_public.companies 
  ADD CONSTRAINT companies_main_image_id_fkey 
    FOREIGN KEY(main_image_id) 
    REFERENCES agent_db_app_public.images (id) 
    ON DELETE SET NULL;

