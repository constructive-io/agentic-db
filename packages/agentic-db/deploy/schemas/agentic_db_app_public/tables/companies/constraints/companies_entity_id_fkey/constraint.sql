-- Deploy: schemas/agentic_db_app_public/tables/companies/constraints/companies_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/companies/table
-- requires: schemas/agentic_db_app_public/tables/contacts/columns/main_image_id/column


ALTER TABLE "agentic_db_app_public".companies 
  ADD CONSTRAINT companies_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

