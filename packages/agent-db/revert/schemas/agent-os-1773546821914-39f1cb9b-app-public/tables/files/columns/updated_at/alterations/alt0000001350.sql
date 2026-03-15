-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/files/columns/updated_at/alterations/alt0000001350


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".files 
  ALTER COLUMN updated_at DROP NOT NULL;


