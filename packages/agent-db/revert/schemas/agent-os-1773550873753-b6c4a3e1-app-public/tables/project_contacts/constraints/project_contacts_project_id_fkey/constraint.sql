-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/project_contacts/constraints/project_contacts_project_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".project_contacts 
  DROP CONSTRAINT project_contacts_project_id_fkey;


