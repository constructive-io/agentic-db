-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/project_contacts/columns/contact_id/alterations/alt0000001331


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".project_contacts 
  ALTER COLUMN contact_id DROP NOT NULL;


