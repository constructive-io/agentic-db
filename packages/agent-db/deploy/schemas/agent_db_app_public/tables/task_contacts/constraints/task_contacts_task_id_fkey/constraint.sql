-- Deploy: schemas/agent_db_app_public/tables/task_contacts/constraints/task_contacts_task_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tasks/table
-- requires: schemas/agent_db_app_public/tables/task_contacts/table
-- requires: schemas/agent_db_app_public/tables/list_items/constraints/list_items_list_id_fkey/constraint


ALTER TABLE agent_db_app_public.task_contacts 
  ADD CONSTRAINT task_contacts_task_id_fkey 
    FOREIGN KEY(task_id) 
    REFERENCES agent_db_app_public.tasks (id) 
    ON DELETE CASCADE;

