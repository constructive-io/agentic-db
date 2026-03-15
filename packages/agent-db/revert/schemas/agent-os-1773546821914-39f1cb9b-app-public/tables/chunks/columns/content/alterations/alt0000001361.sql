-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chunks/columns/content/alterations/alt0000001361


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chunks 
  ALTER COLUMN content DROP NOT NULL;


