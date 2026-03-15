-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/project_contacts/columns/id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".project_contacts 
  DROP COLUMN id RESTRICT;


