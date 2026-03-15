-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/project_contacts/columns/project_id/alterations/alt0000001330


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".project_contacts 
  ALTER COLUMN project_id DROP NOT NULL;


