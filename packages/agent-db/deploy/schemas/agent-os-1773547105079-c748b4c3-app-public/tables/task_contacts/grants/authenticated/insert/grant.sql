-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/task_contacts/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/task_contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/list_items/constraints/list_items_list_id_fkey/constraint


GRANT INSERT ON "agent-os-1773547105079-c748b4c3-app-public".task_contacts TO authenticated;

