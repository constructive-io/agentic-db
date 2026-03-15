-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/updated_at/alterations/alt0000001178


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  ALTER COLUMN updated_at DROP NOT NULL;


