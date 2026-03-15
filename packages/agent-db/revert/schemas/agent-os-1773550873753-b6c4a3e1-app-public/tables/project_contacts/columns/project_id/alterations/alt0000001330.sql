-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/project_contacts/columns/project_id/alterations/alt0000001330


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".project_contacts 
  ALTER COLUMN project_id DROP NOT NULL;


