-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/project_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/milestones/columns/updated_at/alterations/alt0000001326


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".milestones 
  ADD COLUMN project_id uuid;

