-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/project_contacts/columns/project_id/alterations/alt0000002939
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/project_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/project_contacts/columns/project_id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".project_contacts 
  ALTER COLUMN project_id SET NOT NULL;

