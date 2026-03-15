-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/task_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tasks/columns/project_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tasks 
  ADD COLUMN task_type text;

