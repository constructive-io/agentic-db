-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/constraints/project_contacts_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/templates/indexes/templates_is_active_idx


ALTER TABLE agentic_db_app_public.project_contacts 
  ADD CONSTRAINT project_contacts_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

