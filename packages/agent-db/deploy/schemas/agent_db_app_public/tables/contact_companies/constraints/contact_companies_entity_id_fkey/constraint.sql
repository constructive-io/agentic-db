-- Deploy: schemas/agent_db_app_public/tables/contact_companies/constraints/contact_companies_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/contact_companies/table
-- requires: schemas/agent_db_app_public/tables/notes/constraints/notes_contact_id_fkey/constraint


ALTER TABLE agent_db_app_public.contact_companies 
  ADD CONSTRAINT contact_companies_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;

