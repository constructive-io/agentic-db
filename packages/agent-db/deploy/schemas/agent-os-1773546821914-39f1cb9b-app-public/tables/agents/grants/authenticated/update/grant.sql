-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/agents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint


GRANT UPDATE ON "agent-os-1773546821914-39f1cb9b-app-public".agents TO authenticated;

