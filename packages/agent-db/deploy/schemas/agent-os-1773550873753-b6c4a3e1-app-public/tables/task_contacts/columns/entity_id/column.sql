-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/task_contacts/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/task_contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/list_items/constraints/list_items_list_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".task_contacts 
  ADD COLUMN entity_id uuid;

