-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/updated_at/alterations/alt0000001230


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
  ALTER COLUMN updated_at DROP NOT NULL;


