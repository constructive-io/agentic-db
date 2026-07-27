-- Deploy: schemas/agentic_db_app_public/tables/companies/constraints/companies_main_image_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/images/table
-- requires: schemas/agentic_db_app_public/tables/companies/table


ALTER TABLE agentic_db_app_public.companies 
  ADD CONSTRAINT companies_main_image_id_fkey 
    FOREIGN KEY(main_image_id) 
    REFERENCES agentic_db_app_public.images (id) 
    ON DELETE SET NULL;

