-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/project_contacts/columns/project_id/alterations/alt0000001330
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/project_contacts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/project_contacts/columns/project_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".project_contacts 
  ALTER COLUMN project_id SET NOT NULL;

