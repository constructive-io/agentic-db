-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/constraints/milestones_project_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/projects/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/columns/status/alterations/alt0000001328


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".milestones 
  ADD CONSTRAINT milestones_project_id_fkey 
    FOREIGN KEY(project_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-app-public".projects (id) 
    ON DELETE CASCADE;

