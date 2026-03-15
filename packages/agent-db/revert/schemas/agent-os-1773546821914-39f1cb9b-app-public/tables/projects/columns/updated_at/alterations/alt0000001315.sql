-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/projects/columns/updated_at/alterations/alt0000001315


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".projects 
  ALTER COLUMN updated_at DROP NOT NULL;


