-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/project_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tasks/columns/priority/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tasks 
  ADD COLUMN project_id uuid;

