-- Deploy: schemas/agent_db_app_public/tables/task_contacts/constraints/task_contacts_contact_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contacts/table
-- requires: schemas/agent_db_app_public/tables/task_contacts/table
-- requires: schemas/agent_db_app_public/tables/list_items/constraints/list_items_list_id_fkey/constraint


ALTER TABLE agent_db_app_public.task_contacts 
  ADD CONSTRAINT task_contacts_contact_id_fkey 
    FOREIGN KEY(contact_id) 
    REFERENCES agent_db_app_public.contacts (id) 
    ON DELETE CASCADE;

