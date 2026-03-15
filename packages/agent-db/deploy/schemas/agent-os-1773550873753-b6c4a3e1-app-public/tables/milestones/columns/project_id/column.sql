-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/columns/project_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/columns/updated_at/alterations/alt0000001326


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".milestones 
  ADD COLUMN project_id uuid;

