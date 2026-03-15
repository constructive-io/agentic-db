-- Deploy: schemas/agent_db_app_public/tables/contact_documents/constraints/contact_documents_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/contact_documents/table
-- requires: schemas/agent_db_app_public/tables/contact_phones/constraints/contact_phones_contact_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_documents 
  ADD CONSTRAINT contact_documents_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

