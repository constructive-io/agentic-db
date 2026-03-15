-- Deploy: schemas/agent_db_app_public/tables/companies/constraints/companies_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/companies/table
-- requires: schemas/agent_db_app_public/tables/contacts/columns/main_image_id/column


ALTER TABLE "agent_db_app_public".companies 
  ADD CONSTRAINT companies_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

