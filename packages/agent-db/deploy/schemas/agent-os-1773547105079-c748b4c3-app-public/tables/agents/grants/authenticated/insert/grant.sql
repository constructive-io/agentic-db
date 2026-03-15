-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/grants/authenticated/insert/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/agents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


GRANT INSERT ON "agent-os-1773547105079-c748b4c3-app-public".agents TO authenticated;

