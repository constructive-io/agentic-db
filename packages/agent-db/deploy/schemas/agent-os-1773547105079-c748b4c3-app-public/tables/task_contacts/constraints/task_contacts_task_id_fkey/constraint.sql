-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/task_contacts/constraints/task_contacts_task_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/task_contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/constraints/list_items_list_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".task_contacts 
  ADD CONSTRAINT task_contacts_task_id_fkey 
    FOREIGN KEY(task_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-app-public".tasks (id) 
    ON DELETE CASCADE;

