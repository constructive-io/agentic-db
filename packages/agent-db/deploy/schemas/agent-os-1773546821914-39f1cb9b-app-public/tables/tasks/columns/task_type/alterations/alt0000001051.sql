-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/task_type/alterations/alt0000001051
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/task_type/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/columns/project_id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tasks 
    ALTER COLUMN task_type SET DEFAULT 'human';

