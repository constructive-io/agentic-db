-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/constraints/milestones_project_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/status/alterations/alt0000002937


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".milestones 
  ADD CONSTRAINT milestones_project_id_fkey 
    FOREIGN KEY(project_id) 
    REFERENCES "agent-os-1773551593867-bac64076-app-public".projects (id) 
    ON DELETE CASCADE;

