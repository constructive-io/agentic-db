-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/project_contacts/columns/contact_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/project_contacts/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".project_contacts 
  ADD COLUMN contact_id uuid;

