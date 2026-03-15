-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/task_contacts/alterations/alt0000003171
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/task_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/list_items/constraints/list_items_list_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".task_contacts 
  DISABLE ROW LEVEL SECURITY;

