-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/constraints/tasks_parent_task_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/feedback/columns/source/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tasks 
  ADD CONSTRAINT tasks_parent_task_id_fkey 
    FOREIGN KEY(parent_task_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-app-public".tasks (id) 
    ON DELETE SET NULL;

