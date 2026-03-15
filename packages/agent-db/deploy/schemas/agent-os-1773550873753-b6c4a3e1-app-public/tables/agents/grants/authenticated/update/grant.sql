-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agents/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


GRANT UPDATE ON "agent-os-1773550873753-b6c4a3e1-app-public".agents TO authenticated;

