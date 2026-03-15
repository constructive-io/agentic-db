-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/task_contacts/constraints/task_contacts_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/task_contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/constraints/list_items_list_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".task_contacts 
  ADD CONSTRAINT task_contacts_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE CASCADE;

