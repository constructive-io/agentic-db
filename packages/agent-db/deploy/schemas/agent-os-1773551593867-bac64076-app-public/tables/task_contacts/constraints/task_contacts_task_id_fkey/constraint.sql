-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/task_contacts/constraints/task_contacts_task_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/task_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/constraints/list_items_list_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".task_contacts 
  ADD CONSTRAINT task_contacts_task_id_fkey 
    FOREIGN KEY(task_id) 
    REFERENCES "agent-os-1773551593867-bac64076-app-public".tasks (id) 
    ON DELETE CASCADE;

