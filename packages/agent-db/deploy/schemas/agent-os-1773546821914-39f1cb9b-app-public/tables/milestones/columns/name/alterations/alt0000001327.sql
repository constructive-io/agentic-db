-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/name/alterations/alt0000001327
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/name/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/project_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".milestones 
  ALTER COLUMN name SET NOT NULL;

